struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<vec2<u32>, 15>;

var<private> global3: Struct_2 = Struct_2(Struct_1(true, vec4<u32>(0u, 47816u, 0u, 25231u), vec4<u32>(15003u, 57458u, 17684u, 1u)), i32(-2147483648), vec3<bool>(true, true, false));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec3<i32>, arg_3: vec4<u32>) -> bool {
    let var_0 = firstLeadingBit(~(~(-_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.b, arg_0.b, 1i), arg_2))));
    var var_1 = ~0u;
    var var_2 = global3.c;
    global0 = array<f32, 18>();
    let var_3 = arg_0;
    return true;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = all(vec2<bool>(!any(vec4<bool>(true, global1.x, global1.x, true)), !(global3.a.a || false))) & func_3(Struct_2(global3.a, -_wgslsmith_mod_i32(-2147483647i, 2147483647i), global3.c), select(vec2<bool>(true, !global1.x), vec2<bool>(true, true), (global1.x | global3.c.x) && global1.x), ~vec3<i32>(-arg_1, global3.b, arg_1), min(global3.a.c, global3.a.c >> (vec4<u32>(global3.a.b.x, u_input.d, 81779u, 8189u) % vec4<u32>(32u))));
    let var_2 = ~vec3<u32>(32983u, ~(~(~101649u)), 54096u);
    return Struct_2(global3.a, u_input.c.x, vec3<bool>(true, false, global3.b != global3.b));
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = Struct_1(arg_0.x, abs(~global3.a.c), global3.a.c);
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(abs(var_0.c.x), 18u)], _wgslsmith_div_f32(global0[_wgslsmith_index_u32(global3.a.b.x, 18u)], global0[_wgslsmith_index_u32(var_0.c.x, 18u)])))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global3.a.b.x, 18u)])))))), i32(-1i) * -14471i);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)))), global0[_wgslsmith_index_u32(global3.a.c.x, 18u)]);
    var var_3 = Struct_3(Struct_1(!global1.x, (select(vec4<u32>(0u, global3.a.b.x, 1688u, 24415u), vec4<u32>(8671u, 4294967295u, 4294967295u, 4294967295u), true) << (vec4<u32>(global3.a.c.x, 133329u, var_1.a.c.x, 0u) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1541u, u_input.b.x, 0u), vec4<u32>(4294967295u, 0u, u_input.b.x, var_1.a.b.x)), var_0.c) % vec4<u32>(32u)), select(vec4<u32>(1u, u_input.a, 1u, 51771u), vec4<u32>(_wgslsmith_sub_u32(0u, var_1.a.c.x), global3.a.b.x ^ 4294967295u, var_1.a.b.x, 17816u), arg_0)), var_1.a.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-494f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(13976u, 18u)])), -895f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2))), var_2)));
    let var_4 = var_0.a;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = global3.a;
    let var_2 = vec4<f32>(466f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(152f - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.c.x, 18u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(20723u, 18u)] * global0[_wgslsmith_index_u32(1890u, 18u)]) - _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 18u)])))))), 111f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 18u)]));
    var var_3 = func_1(vec4<bool>(500f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(19094u, 18u)] + 1260f)), (!global3.c.x && global1.x) && true, ~_wgslsmith_clamp_u32(u_input.d, global3.a.c.x, var_1.b.x) > _wgslsmith_div_u32(~u_input.a, var_0), (abs(10489u) > global3.a.b.x) & !var_1.a));
    var var_4 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.c.x, 18u)] - var_2.x) * global0[_wgslsmith_index_u32(var_1.c.x, 18u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))), global0[_wgslsmith_index_u32(11102u, 18u)], true))), -((-60253i & _wgslsmith_clamp_i32(1i, global3.b, u_input.c.x)) << (~min(var_0, var_0) % 32u)));
    let var_5 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) * _wgslsmith_f_op_f32(trunc(-1388f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(872f)), _wgslsmith_div_f32(-1717f, var_2.x)))), var_4.b).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_2))) * _wgslsmith_f_op_vec4_f32(abs(var_2))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2468f, global0[_wgslsmith_index_u32(u_input.d, 18u)], 1221f, -161f))))), var_4.b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(27339u, 18u)]) + var_2.x), _wgslsmith_f_op_f32(329f - global0[_wgslsmith_index_u32(var_4.a.c.x, 18u)])), _wgslsmith_f_op_f32(select(-855f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), true))), _wgslsmith_clamp_vec3_u32(var_4.a.b.xyx, vec3<u32>(4294967295u, 38926u << (var_5.c.x % 32u), 3038u) << (global3.a.c.zzz % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(global3.a.b.zyz, ~vec3<u32>(42493u, 27973u, 0u))), vec4<u32>(_wgslsmith_mod_u32(var_5.c.x, var_1.c.x ^ _wgslsmith_div_u32(var_4.a.b.x, 26635u)), u_input.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.c.x, 4294967295u, u_input.b.x) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(1206u, u_input.d, var_4.a.c.x), vec3<u32>(1u, 83409u, var_5.c.x), vec3<u32>(28478u, 1u, 6615u)), vec3<u32>(19179u >> (global3.a.b.x % 32u), min(4294967295u, var_5.c.x), var_1.b.x)), 25767u));
}


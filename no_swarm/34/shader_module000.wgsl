struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22> = array<i32, 22>(1i, 63292i, -2965i, 2147483647i, -10680i, -29188i, 2147483647i, -1i, 1i, -7705i, 1i, -60412i, -36152i, 1i, 27386i, 1i, 2147483647i, 18367i, -18964i, 2147483647i, -1i, 27419i);

var<private> global1: Struct_3 = Struct_3(vec4<f32>(-684f, 894f, -965f, -113f), Struct_2(vec3<f32>(-1000f, -157f, 916f), vec3<i32>(1i, 18896i, 20315i), vec2<i32>(2147483647i, -2043i)));

var<private> global2: f32;

var<private> global3: array<bool, 11> = array<bool, 11>(true, false, true, true, true, false, false, true, false, false, false);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> f32 {
    global3 = array<bool, 11>();
    global0 = array<i32, 22>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1439f), _wgslsmith_f_op_f32(579f - global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -364f), _wgslsmith_f_op_f32(f32(-1f) * -288f)), vec4<f32>(global1.b.a.x, global1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1056f)) + _wgslsmith_f_op_vec4_f32(-global1.a)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global1.b.a.x)))), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(global1.b.a.x + _wgslsmith_f_op_f32(abs(global1.b.a.x)))), _wgslsmith_sub_vec3_i32(global1.b.b, ~(-vec3<i32>(-1i, global1.b.b.x, -51565i))), global1.b.c));
    let var_1 = Struct_2(var_0.b.a, reverseBits(vec3<i32>(global1.b.b.x, select(-20659i, abs(global0[_wgslsmith_index_u32(0u, 22u)]), any(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.d.x, 11u)]))), 5468i)), ~vec2<i32>(2147483647i, var_0.b.c.x));
    var var_2 = Struct_1(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(~(12910u >> (_wgslsmith_add_u32(4294967295u, u_input.d.x) % 32u)), 22u)], global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(33277u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, u_input.b.x) ^ u_input.b.wx, ~u_input.b.zw)), 22u)]));
    return var_0.b.a.x;
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = global1.b.a.x;
    let var_1 = global1.b;
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.a.x, 1252f, -416f, -1000f) + global1.a)), global1.a)), Struct_2(global1.a.xxz, vec3<i32>(_wgslsmith_add_i32(1i, u_input.e), -23753i, var_1.b.x), _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-var_1.c, var_1.c), vec2<i32>(-2147483647i, _wgslsmith_sub_i32(var_1.b.x, -19236i)))));
    var var_3 = Struct_1(0i);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    return u_input.b.x;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<bool>) -> bool {
    var var_0 = vec4<u32>(1u, ~func_2(!arg_2.zyw), 27100u, u_input.a);
    var var_1 = select(arg_2.wwx, arg_2.xyw, any(arg_2.wxz));
    var var_2 = 0i;
    global0 = array<i32, 22>();
    var_2 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_1.b.b, _wgslsmith_add_vec3_i32(arg_0.b.b, vec3<i32>(17794i, 1i, 32511i))) << (var_0.wzy % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(~(-50953i), -global0[_wgslsmith_index_u32(u_input.b.x, 22u)], _wgslsmith_mult_i32(-1i, u_input.e)), ~(arg_1.b.b >> (u_input.d % vec3<u32>(32u))))), max(arg_1.b.b.x, -1i));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(970f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1.a.x)))), 1924f)));
    global3 = array<bool, 11>();
    global2 = -1939f;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-421f + global1.b.a.x), -976f), var_0)), global1.a.zxw, select(vec3<bool>(!global3[_wgslsmith_index_u32(15935u, 11u)], func_1(Struct_3(global1.a, Struct_2(vec3<f32>(var_0.x, var_0.x, var_0.x), global1.b.b, global1.b.c)), Struct_3(global1.a, Struct_2(vec3<f32>(745f, global1.b.a.x, var_0.x), vec3<i32>(1i, global0[_wgslsmith_index_u32(0u, 22u)], 2147483647i), vec2<i32>(76953i, global0[_wgslsmith_index_u32(4294967295u, 22u)]))), vec4<bool>(global3[_wgslsmith_index_u32(23118u, 11u)], global3[_wgslsmith_index_u32(u_input.b.x, 11u)], true, global3[_wgslsmith_index_u32(u_input.d.x, 11u)])), any(vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(51822u, 11u)]))), select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(u_input.b.x, 11u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.d.x, 11u)], global3[_wgslsmith_index_u32(40427u, 11u)], true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 11u)], true, global3[_wgslsmith_index_u32(u_input.a, 11u)]), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 11u)], global3[_wgslsmith_index_u32(63043u, 11u)], global3[_wgslsmith_index_u32(u_input.b.x, 11u)])), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 4294967295u, u_input.d.x), vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a)), 11u)]), true))), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(global0[_wgslsmith_index_u32(37939u, 22u)]), 0i, countOneBits(2147483647i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(global1.b.b, vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 22u)], global0[_wgslsmith_index_u32(u_input.d.x, 22u)], 2147483647i)), global1.b.b))), -global1.b.b.yy);
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4659u, u_input.b.x, _wgslsmith_add_u32(~4545u, 1u), ~19194u), _wgslsmith_div_vec4_u32(vec4<u32>(func_2(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 11u)], false, true)), ~51047u, abs(0u), abs(1u)), abs(select(vec4<u32>(0u, 4294967295u, 0u, 0u), u_input.b, global3[_wgslsmith_index_u32(15565u, 11u)])))), u_input.b << (u_input.b % vec4<u32>(32u)), u_input.b >> (~abs(vec4<u32>(u_input.b.x, u_input.d.x, u_input.d.x, 0u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_0 + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.b.a.x, var_1.a.x, 1669f), var_0)))) * vec3<f32>(_wgslsmith_f_op_f32(global1.b.a.x + 799f), _wgslsmith_f_op_f32(round(global1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -226f)))), var_0.xz, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(105f, _wgslsmith_f_op_f32(sign(2214f)), 1111f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, var_0.x, global1.b.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-420f, var_0.x, global1.b.a.x))))))), var_0, 1i);
}


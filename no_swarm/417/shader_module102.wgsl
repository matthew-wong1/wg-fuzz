struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<vec4<f32>, 22>;

var<private> global2: f32 = -1156f;

var<private> global3: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> u32 {
    var var_0 = u_input.a.x;
    let var_1 = abs(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(48805u, 90730u, 4294967295u)), global3.e.zzw | _wgslsmith_div_vec3_u32(u_input.b.yxx, vec3<u32>(1u, global3.e.x, 4294967295u))));
    global0 = array<Struct_1, 19>();
    let var_2 = select(vec4<bool>(!global3.d.x, all(!(!vec3<bool>(global3.d.x, global3.d.x, global3.d.x))), (select(global3.d.x, global3.d.x, global3.d.x) | !global3.d.x) || false, !global3.d.x), select(!select(select(vec4<bool>(global3.d.x, global3.d.x, global3.d.x, global3.d.x), vec4<bool>(global3.d.x, false, global3.d.x, global3.d.x), vec4<bool>(global3.d.x, true, global3.d.x, global3.d.x)), !vec4<bool>(global3.d.x, true, global3.d.x, false), select(vec4<bool>(global3.d.x, global3.d.x, true, global3.d.x), vec4<bool>(global3.d.x, true, global3.d.x, true), true)), !(!(!vec4<bool>(true, global3.d.x, false, true))), !vec4<bool>(global3.d.x, true, true, true)), !(1046f < global3.b.x));
    global2 = _wgslsmith_div_f32(global3.b.x, _wgslsmith_f_op_f32(step(global3.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-1036f - global3.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.b.x, global3.c.x)))))));
    return _wgslsmith_sub_u32(~_wgslsmith_sub_u32(~_wgslsmith_sub_u32(28276u, global3.e.x), min(_wgslsmith_sub_u32(70637u, 43139u), ~2820u)), _wgslsmith_add_u32(max(_wgslsmith_clamp_u32(4294967295u << (var_1 % 32u), ~10081u, 0u), ~0u), var_1));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(vec3<u32>(u_input.c, global3.e.x, _wgslsmith_clamp_u32(max(global3.e.x, 0u) ^ ~1u, _wgslsmith_sub_u32(global3.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.e.x, 14689u, global3.e.x), vec3<u32>(u_input.b.x, global3.e.x, u_input.a.x))), _wgslsmith_div_u32(u_input.b.x, u_input.b.x) >> ((u_input.a.x | u_input.c) % 32u))), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, ~func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(global3.a, global3.a)), countOneBits(28905i))), 19u)], global3.c.x, 1u);
    let var_1 = _wgslsmith_f_op_vec2_f32(-global3.c.ww);
    global3 = var_0.b;
    let var_2 = true;
    let var_3 = 23314u;
    return var_0.b;
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: bool, arg_3: vec2<f32>) -> StorageBuffer {
    let var_0 = func_2();
    global3 = var_0;
    global3 = var_0;
    let var_1 = vec4<u32>(abs(~select(abs(35477u), _wgslsmith_mod_u32(global3.e.x, 4294967295u), var_0.d.x | true)), _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.e.x, global3.e.x, var_0.e.x, 50508u), ~u_input.a), vec4<u32>(1u, _wgslsmith_div_u32(firstTrailingBit(var_0.e.x), 28752u), var_0.e.x, ~arg_1.x)), 36721u, arg_1.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-521f)), global3.c.x)));
    return StorageBuffer(_wgslsmith_div_vec2_u32(reverseBits(var_0.e.xx & ~vec2<u32>(global3.e.x, var_1.x)), vec2<u32>(max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.x, var_0.e.x), var_0.e.yz), 1307u), ~u_input.c)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 27168i, 33954i, 1i) ^ vec4<i32>(0i, 1i, global3.a, -1984i), vec4<i32>(var_0.a, arg_0, var_0.a, arg_0)), _wgslsmith_mod_i32(-arg_0, _wgslsmith_mod_i32(arg_0, 66966i))) | -select(vec2<i32>(-41030i, -79248i), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -25231i), vec2<i32>(0i, global3.a)), vec2<bool>(false, var_0.d.x)), var_0.e.x, vec2<u32>(~global3.e.x, firstLeadingBit(var_0.e.x)) & vec2<u32>(43168u, 62864u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.a, -53038i, 54946i), vec3<i32>(7394i, global3.a, 1i)), select(vec3<i32>(global3.a, -1i, 0i), vec3<i32>(0i, -4593i, 1i), false)), reverseBits(-vec3<i32>(-2147483647i, 0i, 2147483647i))), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(1i, global3.a), vec2<i32>(global3.a, global3.a)), min(~vec2<i32>(global3.a, 6116i), -vec2<i32>(12919i, global3.a)))), reverseBits(abs(abs(global3.e.zwy)) >> ((vec3<u32>(u_input.c, 1u, global3.e.x) ^ u_input.b.yzw) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-513f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global3.b.x)), _wgslsmith_f_op_f32(1130f + global3.b.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1381f, 709f)))));
}


struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1351f, 1636f, -449f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -698f), _wgslsmith_f_op_f32(min(1874f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1287f, 237f)), _wgslsmith_f_op_f32(select(-650f, 426f, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f - _wgslsmith_f_op_f32(-709f - -609f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(803f, -494f) * _wgslsmith_f_op_f32(abs(-1049f))))));
    let var_1 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(756f)))));
    var var_2 = Struct_1(0u);
    var var_3 = ~global0.x;
    let var_4 = u_input.d.wwx;
    return -max(u_input.c, abs(-vec2<i32>(-40234i, 1i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = ~(~(~1u));
    var var_1 = _wgslsmith_div_vec2_i32(func_3(global0.yyx), (min(min(vec2<i32>(-9551i, 40851i), global0.xw), global0.yx) << (reverseBits(vec2<u32>(82816u, 26342u)) % vec2<u32>(32u))) << (~((arg_0.xx ^ arg_0.xy) >> (arg_0.zx % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = arg_1;
    let var_3 = Struct_1(28118u);
    let var_4 = select(~(-_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(9137i, var_1.x, 0i), vec3<i32>(-15235i, u_input.c.x, 0i)), ~u_input.a.x)), _wgslsmith_sub_i32(~func_3(u_input.a).x & _wgslsmith_div_i32(_wgslsmith_div_i32(var_1.x, 1i), var_1.x), global0.x), arg_1.a != countOneBits(_wgslsmith_mod_u32(u_input.d.x, u_input.d.x) & min(0u, 1u)));
    return _wgslsmith_add_u32(firstTrailingBit(~(~abs(39256u))), ~(~reverseBits(arg_0.x >> (var_3.a % 32u))));
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = Struct_1(~u_input.d.x << ((~0u >> (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.d.zw, u_input.d.zz), func_2(u_input.d.wxz, Struct_1(0u))) % 32u)) % 32u));
    var var_1 = Struct_1(~_wgslsmith_sub_u32(u_input.d.x, abs(35780u)));
    var var_2 = _wgslsmith_dot_vec4_i32(-u_input.b, -vec4<i32>(-2147483647i, global0.x, -4809i, -2147483647i));
    let var_3 = var_1.a;
    let var_4 = true;
    return abs(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, ~1u, func_1(-1i)), u_input.d), u_input.d));
    global0 = ~select(~_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 10235i, u_input.b.x, -1i) & vec4<i32>(global0.x, -6282i, u_input.a.x, global0.x), u_input.b), u_input.b, select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), false));
    let var_1 = ~u_input.b.x > ~global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec3_i32(u_input.b.xyw, select(u_input.a, firstTrailingBit(global0.xyx), !var_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -989f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -433f)))), select(~u_input.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 57022i) & min(vec2<i32>(global0.x, 8330i), u_input.c), global0.wx, _wgslsmith_clamp_vec2_i32(global0.yw, vec2<i32>(global0.x, -1i), select(u_input.a.yz, global0.xz, vec2<bool>(true, var_1)))), vec2<bool>(false, select(!var_1, true, false))), reverseBits(u_input.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(927f)), -436f, false)))));
}


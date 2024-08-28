struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

var<private> global1: i32 = 35662i;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 1u, 0u, 52382u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec3<i32> {
    var var_0 = -2147483647i;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2004f, -267f, 1128f)))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-856f, -602f, -1000f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(976f, -1006f, -1000f), vec3<f32>(1261f, -2001f, -508f)))))))));
    var_0 = _wgslsmith_mod_i32(firstLeadingBit(0i), _wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, 2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(33443i, -1i), vec2<i32>(2147483647i, 7141i))), -select(1i, 1i, true))));
    let var_3 = _wgslsmith_mod_vec4_i32(firstLeadingBit(~(-vec4<i32>(-2147483647i, -52907i, -10927i, 0i))), vec4<i32>(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(6800i, 21920i), abs(vec2<i32>(-14045i, 32459i)))), _wgslsmith_mult_i32(min(1i, 2147483647i), 1i), select(-52200i, _wgslsmith_div_i32(min(0i, -2147483647i), _wgslsmith_clamp_i32(-2147483647i, 13767i, 0i)), true), firstLeadingBit(-1i << (~global2.x % 32u))));
    return vec3<i32>(-1i, var_3.x, var_3.x) << (~(_wgslsmith_div_vec3_u32(select(u_input.a, vec3<u32>(52047u, 4294967295u, 44021u), false), reverseBits(global2.zww)) << (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_2() -> i32 {
    let var_0 = Struct_1(func_3());
    var var_1 = Struct_1(abs(vec3<i32>(abs(-1i), firstTrailingBit(var_0.a.x), var_0.a.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(933f, 749f)));
    var var_3 = ~49017u;
    var var_4 = var_0;
    return var_4.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    global1 = -func_2();
    let var_0 = arg_0;
    var var_1 = arg_0.a.xz;
    global1 = -12797i;
    let var_2 = Struct_1(vec3<i32>(0i, 42909i, _wgslsmith_dot_vec2_i32(vec2<i32>(max(var_0.a.x, -54906i), var_1.x), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(2864i, 23065i)), _wgslsmith_mult_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(var_1.x, arg_0.a.x))))));
    return var_0;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> StorageBuffer {
    global2 = ~reverseBits(vec4<u32>(max(global2.x << (global2.x % 32u), ~1u), _wgslsmith_mult_u32(10923u, global2.x), ~30047u, global2.x));
    global2 = vec4<u32>(abs(~min(reverseBits(1u), u_input.c.x)), 4294967295u, u_input.c.x, _wgslsmith_div_u32(0u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(64535u, 15539u, 0u, global2.x), select(vec4<u32>(1u, u_input.b, 49342u, u_input.c.x), vec4<u32>(0u, 0u, u_input.c.x, u_input.b), arg_0), vec4<u32>(13529u, global2.x, 0u, 1u) >> (vec4<u32>(1u, u_input.a.x, 82650u, 0u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u), vec4<u32>(u_input.a.x, global2.x, 1u, 33732u)) ^ ~vec4<u32>(56325u, 88197u, 16375u, u_input.b))));
    return StorageBuffer(firstLeadingBit(countOneBits(countOneBits(~vec4<u32>(u_input.c.x, 0u, global2.x, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstLeadingBit(abs(vec4<u32>(1u ^ abs(u_input.c.x), _wgslsmith_sub_u32(global2.x, 1u), u_input.b, 1u)));
    let x = u_input.a;
    s_output = func_4(!(!all(global0[_wgslsmith_index_u32(u_input.a.x, 17u)])) || !(_wgslsmith_f_op_f32(step(-544f, 1202f)) > _wgslsmith_f_op_f32(-607f + 222f)), func_1(Struct_1(_wgslsmith_mod_vec3_i32(-vec3<i32>(2147483647i, 0i, -19609i), vec3<i32>(1i, 1i, 1i))), true & select(true, true, select(false, true, true))));
}


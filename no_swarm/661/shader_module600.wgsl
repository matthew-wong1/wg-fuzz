struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = vec3<i32>(13465i, -25536i, -(countOneBits(~(-1i)) ^ min(_wgslsmith_dot_vec2_i32(vec2<i32>(14815i, 12612i), vec2<i32>(2147483647i, 67746i)), ~2147483647i)));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -123f)), _wgslsmith_f_op_f32(round(-2040f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1176f))), Struct_2(true, abs((-26480i >> (u_input.a.x % 32u)) | (var_0.x ^ -1i)), ~(~_wgslsmith_sub_u32(34456u, u_input.a.x)), Struct_1(_wgslsmith_clamp_u32(~u_input.a.x, abs(1160u), _wgslsmith_mult_u32(0u, u_input.a.x)), ~21738u), arg_0.x));
    var var_2 = min(_wgslsmith_clamp_vec2_i32(~countOneBits(vec2<i32>(var_0.x, var_1.c.b)), max(vec2<i32>(firstTrailingBit(1i), _wgslsmith_dot_vec3_i32(var_0, var_0)), var_0.xx), max(firstTrailingBit(_wgslsmith_div_vec2_i32(var_0.zx, vec2<i32>(-74810i, -1i))), ~(-var_0.yz))), abs(vec2<i32>(var_0.x, var_1.c.b)));
    let var_3 = _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>((var_0.x & 0i) | var_1.c.b, _wgslsmith_mult_i32(_wgslsmith_div_i32(3724i, var_2.x), -1i)), var_0.xz, var_0.xx), select(-_wgslsmith_div_vec2_i32(var_0.yz, var_0.yy), -((var_0.yx & var_0.yz) | _wgslsmith_div_vec2_i32(vec2<i32>(37374i, 1i), var_0.xy)), u_input.a.x <= u_input.a.x));
    var_2 = min(var_0.yz, var_0.xy);
    return 49726u;
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = vec4<i32>(2147483647i, 1i << (_wgslsmith_clamp_u32(21673u, u_input.a.x & func_3(vec4<bool>(false, true, false, true)), _wgslsmith_div_u32(~4294967295u, ~u_input.a.x)) % 32u), select(~1i, _wgslsmith_div_i32(0i, -1i), all(vec4<bool>(true, true, false, true))), (i32(-1i) * -15154i) << (_wgslsmith_mod_u32(1235u | min(u_input.a.x, u_input.a.x), u_input.a.x) % 32u));
    var var_1 = arg_0;
    var var_2 = Struct_1(abs(_wgslsmith_add_u32(~(~15857u), u_input.a.x)), u_input.a.x);
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1825f)), 1608f))), arg_0, Struct_2(false, var_0.x, abs(_wgslsmith_mult_u32(u_input.a.x, var_2.b >> (u_input.a.x % 32u))), Struct_1(~(~46454u), 29005u), any(vec2<bool>(false, select(false, true, false)))));
    var_1 = arg_0;
    return _wgslsmith_sub_i32(_wgslsmith_mult_i32(~_wgslsmith_sub_i32(12162i | var_3.c.b, ~(-1i)), _wgslsmith_sub_i32(12212i, -countOneBits(3852i))), abs(_wgslsmith_dot_vec3_i32(max(vec3<i32>(var_0.x, var_3.c.b, var_3.c.b), vec3<i32>(var_3.c.b, -2147483647i, -1i)), vec3<i32>(0i, var_0.x | -1i, ~(-29371i)))));
}

fn func_1() -> bool {
    var var_0 = -abs(-vec4<i32>(0i, 2147483647i, -2147483647i, 2147483647i)) ^ vec4<i32>(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(137f))))), 1i, -15530i, reverseBits(-_wgslsmith_div_i32(58589i, 1i)));
    let var_1 = !(!(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)))));
    var var_2 = -376f;
    var var_3 = u_input.a.x >> (u_input.a.x % 32u);
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2597f);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = !((!var_0 | true) & true);
    let var_2 = Struct_2(any(vec4<bool>(53007u == u_input.a.x, true, var_0, false)), _wgslsmith_sub_i32(-2147483647i, -1i), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(firstLeadingBit(~u_input.a.x), u_input.a.x, (23835u >> (u_input.a.x % 32u)) & 1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(32375u, 52731u)), u_input.a.x))), Struct_1(0u, 0u), true);
    let var_3 = firstLeadingBit(vec4<u32>(12508u, min(~var_2.c, u_input.a.x), ~(~var_2.c), 4294967295u));
    var var_4 = ~countOneBits(~u_input.a);
    let var_5 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1106f, _wgslsmith_f_op_f32(round(374f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(155f, 639f) + -2365f)))));
    var var_6 = 0u;
    var var_7 = abs(max(select(~_wgslsmith_mult_u32(4294967295u, var_2.d.b), ~max(4294967295u, var_3.x), !var_2.a & any(vec3<bool>(var_0, false, var_0))), 79433u));
    let var_8 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(var_2.d.b, 28553u | var_3.x), 68656u), reverseBits(vec2<u32>(32737u, min(~u_input.a.x, var_2.c))), var_3.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(3064f)), ~firstTrailingBit(var_2.b), var_3.yxy, -64366i, vec3<u32>(u_input.a.x, 4294967295u, _wgslsmith_mult_u32(countOneBits(var_8.x) << (~u_input.a.x % 32u), 0u)));
}


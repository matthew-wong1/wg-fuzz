struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: vec4<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(16336u, _wgslsmith_add_u32(u_input.d.x >> (u_input.d.x % 32u), select(u_input.d.x, 0u, arg_1)), 1u)), _wgslsmith_sub_vec3_u32(select(reverseBits(u_input.d), u_input.d, arg_1), vec3<u32>(firstTrailingBit(1099u) & arg_0.x, abs(~1u), _wgslsmith_add_u32(38588u, countOneBits(37734u)))));
    let var_1 = _wgslsmith_f_op_f32(min(325f, _wgslsmith_f_op_f32(f32(-1f) * -236f)));
    var var_2 = -1750f;
    var var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(countOneBits(u_input.b), -(vec3<i32>(-23020i, u_input.a, -15677i) | -vec3<i32>(28074i, u_input.a, u_input.a))), vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, -15671i), _wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(1i, u_input.b.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(66249i, u_input.a, 2147483647i), ~u_input.b)) ^ ~u_input.b, select(u_input.b, _wgslsmith_mult_vec3_i32(-_wgslsmith_mod_vec3_i32(u_input.b, u_input.b), ~u_input.b & (vec3<i32>(u_input.b.x, u_input.a, 1i) >> (vec3<u32>(66136u, 1u, 21550u) % vec3<u32>(32u)))), any(vec4<bool>(arg_1 | arg_1, any(vec2<bool>(true, arg_1)), all(vec2<bool>(false, arg_1)), arg_1))));
    var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_1)))));
    return vec4<bool>(arg_1, any(vec3<bool>(true, arg_1, -1i <= var_3.x)), arg_1, all(select(!(!vec2<bool>(arg_1, false)), vec2<bool>(any(vec3<bool>(arg_1, false, arg_1)), any(vec2<bool>(arg_1, true))), any(vec3<bool>(arg_1, true, false)))));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = arg_0;
    let var_1 = Struct_4(Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-977f, arg_0) + vec2<f32>(arg_0, 292f)) + vec2<f32>(1000f, arg_0))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-760f, -1010f))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false))), any(!func_3(vec2<u32>(u_input.c.x, u_input.d.x), true, vec4<f32>(arg_0, arg_0, -887f, arg_0)))), -1913f, Struct_2(vec4<f32>(954f, arg_0, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(ceil(arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-388f * arg_0)))), _wgslsmith_f_op_f32(-arg_0));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(845f + -1428f)))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(f32(-1f) * -697f))));
    let var_3 = var_1.c;
    return -abs(abs(-35117i));
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    let var_0 = ~(~u_input.a) & _wgslsmith_add_i32(abs(-1i), _wgslsmith_mod_i32(2147483647i, u_input.b.x) | func_2(1000f));
    var var_1 = Struct_4(Struct_1(any(vec3<bool>(true, true, arg_1)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(285f, -473f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-942f, _wgslsmith_div_f32(1763f, -151f))) * _wgslsmith_f_op_f32(trunc(-1449f))), vec3<bool>(!arg_1, true, arg_1), select(arg_0, arg_1, select(u_input.b.x <= u_input.b.x, all(vec4<bool>(false, true, arg_1, true)), false))), -1000f, Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(630f, 1011f, -798f, 1889f) - vec4<f32>(837f, -124f, 724f, 1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2992f, -1571f, 1060f, -126f)) - vec4<f32>(775f, 810f, 726f, 114f)), vec4<bool>(!arg_1, arg_0, -30953i >= u_input.b.x, u_input.b.x < 1i)))), 473f);
    var_1 = Struct_4(var_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) - 259f)), -872f), Struct_2(var_1.c.a), 759f);
    let var_2 = true;
    var_1 = Struct_4(Struct_1(select(true, false, false) || all(!vec4<bool>(false, true, false, arg_1)), vec2<f32>(_wgslsmith_f_op_f32(-358f * _wgslsmith_f_op_f32(var_1.d * var_1.a.c)), -125f), 2503f, !var_1.a.d, true && (_wgslsmith_sub_i32(u_input.a, var_0) >= ~1i)), var_1.d, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.c - -916f))), var_1.d, _wgslsmith_f_op_f32(-var_1.b), var_1.a.b.x)), 443f);
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(4294967295u, abs(firstLeadingBit(min(19647u << (u_input.c.x % 32u), ~4294967295u))));
    let var_1 = vec2<f32>(1f, 247f);
    var_0 = 9576u;
    var_0 = _wgslsmith_dot_vec3_u32(u_input.d, ~u_input.d);
    var_0 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(max(u_input.d.x, select(min(0u, u_input.c.x), u_input.d.x, all(vec3<bool>(true, false, false)))), _wgslsmith_add_u32(abs(9071u) & u_input.c.x, 0u)), u_input.d.x, _wgslsmith_add_u32(13943u, func_1(false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.x), u_input.c.x);
}


struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: f32) -> i32 {
    var var_0 = ~(~(~arg_1.e.a.a.x));
    global0 = u_input.c;
    let var_1 = arg_0.b;
    var_0 = 1u;
    let var_2 = ~(~(-vec4<i32>(2147483647i, 6777i, arg_1.d.b.x, -2147483647i) & ~vec4<i32>(2147483647i, -2147483647i, arg_0.b, -2147483647i)));
    return var_2.x;
}

fn func_3(arg_0: Struct_3) -> i32 {
    global0 = 27354u;
    let var_0 = 0u;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -458f)));
    var var_2 = Struct_3(arg_0.a, _wgslsmith_div_vec3_i32(max(vec3<i32>(firstLeadingBit(1i), arg_0.b.x, -1i), -max(arg_0.a.b, vec3<i32>(2147483647i, -24746i, -25739i))), vec3<i32>(_wgslsmith_dot_vec2_i32(~arg_0.b.yy, vec2<i32>(arg_0.b.x, 1i)), _wgslsmith_sub_i32(firstLeadingBit(0i), arg_0.b.x), u_input.a.x)));
    global0 = var_0;
    return -71501i;
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_vec2_u32(abs(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 26507u), vec2<u32>(11418u, u_input.b)))), vec2<u32>(0u, 1u)), select(vec3<i32>(max(_wgslsmith_mod_i32(-14758i, 27i), ~u_input.a.x), abs(-2147483647i), u_input.a.x), vec3<i32>(reverseBits(min(-15235i, u_input.a.x)), ~func_2(Struct_4(vec4<f32>(885f, 1656f, 205f, -984f), u_input.a.x, -1899f, Struct_1(vec2<u32>(45654u, 44799u), u_input.a), Struct_3(Struct_1(vec2<u32>(u_input.b, u_input.b), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<i32>(5663i, 1i, -2147483647i))), Struct_4(vec4<f32>(1043f, -625f, -355f, 1641f), u_input.a.x, 360f, Struct_1(vec2<u32>(23581u, 0u), vec3<i32>(0i, u_input.a.x, 2147483647i)), Struct_3(Struct_1(vec2<u32>(u_input.c, 1u), u_input.a), vec3<i32>(u_input.a.x, -3971i, 13280i))), -457f), _wgslsmith_mult_i32(u_input.a.x | 63370i, func_3(Struct_3(Struct_1(vec2<u32>(64741u, 0u), vec3<i32>(1i, 7798i, u_input.a.x)), vec3<i32>(0i, 2147483647i, u_input.a.x))))), select(vec3<bool>(true, false, select(false, false, false)), vec3<bool>(true, true, all(vec3<bool>(false, true, false))), vec3<bool>(true, false, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-492f)), _wgslsmith_f_op_f32(ceil(418f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1156f)) - vec2<f32>(780f, 1602f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1989f, 551f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(700f, -156f) + vec2<f32>(356f, 1236f))))));
    global0 = var_0.a.x;
    var var_2 = true;
    let var_3 = var_1.x;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, u_input.c, 29588u), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.x, 0u, 0u), vec3<u32>(u_input.c, u_input.c, 0u)), firstLeadingBit(vec3<u32>(u_input.b, var_0.a.x, 0u)))), ~firstTrailingBit(vec3<u32>(0u, u_input.b, 1u) >> (vec3<u32>(48245u, u_input.c, u_input.b) % vec3<u32>(32u)))), vec3<u32>(var_0.a.x, ~abs(4294967295u), ~(~min(u_input.c, 3014u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 4294967295u & max(~(~22860u), u_input.c);
    global0 = reverseBits(func_1());
    global0 = 36153u;
    var var_0 = true;
    let var_1 = u_input.a;
    global0 = 4294967295u << (~reverseBits(u_input.c) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(678f, 1805f, -1000f, 590f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1479f, 531f, -1000f, 1096f) + vec4<f32>(1540f, -154f, 1508f, -967f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-264f, -322f, 308f, -676f)))))), _wgslsmith_clamp_vec4_i32(countOneBits(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 0i, u_input.a.x, -30608i), vec4<i32>(u_input.a.x, var_1.x, u_input.a.x, var_1.x)))), ~(~firstTrailingBit(vec4<i32>(var_1.x, -2147483647i, u_input.a.x, u_input.a.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(29754i, 2147483647i, 34298i, var_1.x), vec4<i32>(39277i, var_1.x, 27632i, u_input.a.x)), vec4<i32>(var_1.x, -4665i, var_1.x, u_input.a.x)), -select(vec4<i32>(var_1.x, -16058i, 34225i, var_1.x), vec4<i32>(u_input.a.x, u_input.a.x, var_1.x, var_1.x), vec4<bool>(false, true, true, true)), ~vec4<i32>(0i, 1i, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(106f + -773f), _wgslsmith_f_op_f32(f32(-1f) * -1449f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1148f) * 267f))), ~vec2<i32>(-var_1.x, u_input.a.x));
}


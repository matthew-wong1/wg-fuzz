struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(0u, 4294967295u));

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec2<u32>(44547u, 52595u));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = arg_0.x;
    global0 = Struct_1(~vec2<u32>(_wgslsmith_div_u32(global0.a.x, 1u), 0u) ^ select(firstLeadingBit(abs(global0.a)), vec2<u32>(min(4294967295u, global3.a.x), ~arg_1.a.x), arg_0.zx));
    var var_1 = Struct_1(global1.a);
    global1 = Struct_1(_wgslsmith_mult_vec2_u32(select(vec2<u32>(var_1.a.x, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(global0.a.x, var_1.a.x), countOneBits(vec2<u32>(16291u, global3.a.x))), false), vec2<u32>(firstTrailingBit(20567u) ^ 51504u, global0.a.x)));
    var var_2 = arg_1;
    return _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(~(vec4<u32>(var_2.a.x, global2.a.x, 22622u, arg_1.a.x) >> (vec4<u32>(87173u, 48190u, 76156u, global2.a.x) % vec4<u32>(32u)))), select(firstTrailingBit(~vec4<u32>(global3.a.x, var_1.a.x, 17633u, global0.a.x)), _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(var_2.a.x, global3.a.x, 1u, var_1.a.x)), ~vec4<u32>(var_1.a.x, global1.a.x, var_2.a.x, 0u)), !(u_input.b > u_input.c.x))), firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1.a.x, arg_1.a.x, 38756u, 0u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, 0u, var_1.a.x), vec4<u32>(global2.a.x, 11937u, global0.a.x, 4294967295u)) % vec4<u32>(32u)), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 84991u, global3.a.x, 1u), vec4<u32>(arg_1.a.x, var_1.a.x, var_1.a.x, 0u))))));
}

fn func_2() -> Struct_1 {
    global3 = Struct_1(vec2<u32>(~global1.a.x, func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), Struct_1(global2.a))));
    let var_0 = abs(min(vec4<i32>(firstLeadingBit(-41257i), 6014i, 2147483647i, u_input.c.x & u_input.b) << ((select(vec4<u32>(101573u, 90354u, global2.a.x, 48320u), vec4<u32>(global3.a.x, global2.a.x, 1u, global0.a.x), true) >> (~vec4<u32>(global3.a.x, 1933u, global2.a.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), (countOneBits(vec4<i32>(u_input.b, u_input.b, 0i, u_input.a.x)) << ((vec4<u32>(4294967295u, global1.a.x, global0.a.x, 4294967295u) | vec4<u32>(15808u, global1.a.x, 4294967295u, 20545u)) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 662i, u_input.b), vec4<i32>(u_input.a.x, u_input.c.x, u_input.b, u_input.a.x)), select(vec4<i32>(u_input.a.x, -16045i, u_input.c.x, u_input.c.x), vec4<i32>(-2147483647i, 2147483647i, -2425i, -8558i), vec4<bool>(true, false, true, true)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, u_input.c.x, 1i, u_input.c.x), vec4<i32>(u_input.b, -1255i, u_input.c.x, 49695i)))));
    let var_1 = ~(~global1.a.x);
    let var_2 = select(~countOneBits(global3.a.x | max(4294967295u, 4294967295u)), global1.a.x & _wgslsmith_clamp_u32(~(~global1.a.x), 1u, reverseBits(1u)), select(false, (-36820i <= abs(u_input.a.x)) == true, any(vec2<bool>(false, false))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-154f, _wgslsmith_f_op_f32(abs(626f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1089f * 1282f)))));
    return Struct_1(~vec2<u32>(12117u, ~global0.a.x) << (vec2<u32>(0u, ~(~global0.a.x)) % vec2<u32>(32u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = !all(vec2<bool>(true, true)) && true;
    let var_1 = func_2();
    let var_2 = firstTrailingBit(_wgslsmith_sub_u32(0u, ~select(var_1.a.x, ~arg_2.x, true)));
    return ~arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(u_input.b, -16392i);
    global1 = Struct_1(vec2<u32>(~global0.a.x, select(~4294967295u, func_1(vec2<i32>(0i, -2147483647i), Struct_1(global2.a), max(vec3<u32>(1u, global1.a.x, 38873u), vec3<u32>(4294967295u, global0.a.x, 16788u))), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-3275f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-106f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1441f, 1303f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(815f, 334f))) + vec2<f32>(921f, _wgslsmith_f_op_f32(-1240f + 959f))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-675f))), min(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-19567i, u_input.c.x)) & _wgslsmith_add_vec2_i32(u_input.a, u_input.a), vec2<i32>(u_input.c.x ^ var_0, u_input.c.x)), u_input.c.yy));
}


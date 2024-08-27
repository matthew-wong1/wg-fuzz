struct Struct_1 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(false, vec2<bool>(true, false)), Struct_1(true, vec2<bool>(false, false)), Struct_1(false, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(true, true)), Struct_1(false, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(false, true)), Struct_1(false, vec2<bool>(false, false)), Struct_1(false, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(false, true)), Struct_1(true, vec2<bool>(false, true)), Struct_1(false, vec2<bool>(false, true)), Struct_1(false, vec2<bool>(true, false)), Struct_1(true, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(false, true)), Struct_1(false, vec2<bool>(false, true)), Struct_1(false, vec2<bool>(false, true)), Struct_1(false, vec2<bool>(false, false)), Struct_1(true, vec2<bool>(true, true)), Struct_1(false, vec2<bool>(true, true)), Struct_1(true, vec2<bool>(false, false)), Struct_1(false, vec2<bool>(true, false)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mult_vec3_u32(u_input.b.zww, vec3<u32>(u_input.b.x, ~u_input.a, min(u_input.a, u_input.a)) ^ countOneBits(~vec3<u32>(u_input.a, u_input.b.x, 4294967295u)));
    var var_1 = u_input.c.x;
    let var_2 = arg_2;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1)));
    let var_4 = 21743u;
    return _wgslsmith_mod_u32(~(~(var_0.x >> (0u % 32u))), var_0.x);
}

fn func_2(arg_0: bool, arg_1: f32) -> u32 {
    let var_0 = vec3<u32>(74552u, ~_wgslsmith_sub_u32(u_input.b.x, 4294967295u), ~82214u);
    global0 = countOneBits(~(-vec3<i32>(i32(-1i) * -1i, u_input.c.x ^ u_input.c.x, _wgslsmith_mult_i32(-1i, -2147483647i))));
    global2 = array<Struct_1, 24>();
    global1 = array<Struct_2, 18>();
    var var_1 = _wgslsmith_sub_u32(0u, min(u_input.a, var_0.x)) ^ select(71340u, (u_input.b.x ^ ~14256u) | min(~4294967295u, 102468u), true);
    return select(73158u, _wgslsmith_add_u32(_wgslsmith_div_u32(21136u, u_input.b.x), ~(~func_3(Struct_1(arg_0, vec2<bool>(false, false)), arg_1, Struct_1(false, vec2<bool>(false, true))))), !(!(!(!arg_0))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = select(arg_0.b, select(vec2<bool>(!(!arg_0.b.x), true), arg_0.b, (~global0.x ^ 1i) < (select(-2147483647i, -2147483647i, arg_0.b.x) >> (arg_1 % 32u))), select(!arg_0.b, !(!select(vec2<bool>(true, arg_0.a), arg_0.b, arg_0.a)), !(!select(arg_0.b, vec2<bool>(arg_0.a, false), arg_0.b))));
    global1 = array<Struct_2, 18>();
    let var_1 = global0.xx;
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(max(~65300u, _wgslsmith_mult_u32(1u, 4294967295u)), 54775u << (func_3(arg_0, -106f, arg_0) % 32u)), ~29240u);
    var var_3 = Struct_2(vec4<bool>(!arg_0.a, true & select(false, true, false), false, any(select(!vec3<bool>(false, arg_0.b.x, arg_0.a), !vec3<bool>(arg_0.b.x, var_0.x, true), any(vec3<bool>(false, false, true))))), -31802i >= select(-var_1.x, global0.x, !(var_0.x | false)));
    return Struct_1((max(7565i, _wgslsmith_mod_i32(u_input.d.x, var_1.x)) < min(_wgslsmith_mod_i32(2147483647i, global0.x), -22491i)) | false, !(!select(select(var_3.a.xz, vec2<bool>(var_0.x, var_3.b), vec2<bool>(arg_0.b.x, false)), vec2<bool>(false, var_0.x), !vec2<bool>(var_3.a.x, var_0.x))));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> vec4<u32> {
    let var_0 = func_4(global2[_wgslsmith_index_u32(min(min(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b.xw, u_input.b.xw), _wgslsmith_dot_vec3_u32(vec3<u32>(8550u, u_input.a, 37388u), vec3<u32>(u_input.a, 4294967295u, 4294967295u))), 14347u), func_2(true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))))), 24u)], u_input.a);
    global2 = array<Struct_1, 24>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.b.x, u_input.b.x ^ ~u_input.b.x), max(func_3(func_4(func_4(Struct_1(var_0.a, vec2<bool>(var_0.a, var_0.a)), u_input.a), u_input.b.x), _wgslsmith_f_op_f32(-1000f - -454f), func_4(func_4(Struct_1(var_0.a, var_0.b), 4294967295u), u_input.a)), 1u)), 24u)];
    let var_2 = vec3<u32>(_wgslsmith_mod_u32(u_input.a, max(0u, u_input.a)), 2104u, ~reverseBits(~func_3(var_0, 328f, global2[_wgslsmith_index_u32(0u, 24u)])));
    let var_3 = Struct_2(select(select(!select(vec4<bool>(true, var_0.b.x, true, var_0.a), vec4<bool>(true, false, var_1.b.x, var_1.b.x), false), !vec4<bool>(true, false, var_0.a, var_1.a), vec4<bool>(all(vec3<bool>(var_0.b.x, var_0.a, var_0.a)), true, false, !var_1.a)), select(!vec4<bool>(false, var_1.a, var_0.b.x, false), vec4<bool>(arg_0 > arg_1.x, var_1.b.x, !var_1.a, true), false), var_1.a), (true | any(select(vec3<bool>(true, var_1.a, var_0.a), vec3<bool>(var_1.a, var_1.b.x, true), var_0.b.x))) || !all(select(vec4<bool>(false, true, var_0.b.x, var_1.a), vec4<bool>(false, var_1.b.x, true, false), vec4<bool>(var_1.a, true, true, false))));
    return firstTrailingBit(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_sub_vec4_u32(~abs(func_1(-114f, vec4<f32>(-1695f, -580f, 930f, 519f))), abs(vec4<u32>(10782u, u_input.b.x, 26087u, u_input.b.x) ^ select(u_input.b, u_input.b, false)));
    global1 = array<Struct_2, 18>();
    global0 = u_input.d.wwx;
    let var_1 = 0i;
    global2 = array<Struct_1, 24>();
    global0 = _wgslsmith_sub_vec3_i32(firstLeadingBit(u_input.c), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(global0.x, ~1i), -var_1, 42028i), ~(~(-u_input.d.ywz))));
    var var_2 = func_4(Struct_1(true, select(vec2<bool>(any(vec2<bool>(false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), func_4(global2[_wgslsmith_index_u32(4377u, 24u)], var_0.x).b), !all(vec2<bool>(false, true)))), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-860f, -637f) + _wgslsmith_f_op_f32(-375f + -498f)) - 192f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1582f) + _wgslsmith_f_op_f32(floor(-491f))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-655f, 210f))), _wgslsmith_f_op_f32(-1238f + -514f)));
}


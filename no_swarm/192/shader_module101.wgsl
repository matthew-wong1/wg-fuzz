struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(46805u, 39476i, vec3<bool>(false, false, false), -22924i, 0i), Struct_1(67001u, -18138i, vec3<bool>(false, true, false), 2147483647i, -1i), Struct_1(26409u, 2147483647i, vec3<bool>(true, true, false), i32(-2147483648), 2147483647i), Struct_1(0u, -8867i, vec3<bool>(false, false, false), 2147483647i, -4453i), Struct_1(8071u, -35916i, vec3<bool>(true, true, true), 34136i, 0i), Struct_1(1u, 1i, vec3<bool>(true, true, false), 4672i, i32(-2147483648)), Struct_1(17674u, -1i, vec3<bool>(false, true, true), -1i, 1i), Struct_1(44765u, 16784i, vec3<bool>(false, false, false), 0i, 2147483647i));

var<private> global1: bool = true;

var<private> global2: bool;

var<private> global3: u32;

var<private> global4: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec4<bool>(true, false, false, false), vec2<bool>(true, false), Struct_1(28386u, -54477i, vec3<bool>(false, false, false), -1i, 2147483647i)), Struct_2(vec4<bool>(false, true, false, true), vec2<bool>(true, false), Struct_1(4294967295u, -54542i, vec3<bool>(false, false, true), 1i, 17869i)), Struct_2(vec4<bool>(false, false, true, false), vec2<bool>(false, true), Struct_1(21183u, 2147483647i, vec3<bool>(true, true, true), 0i, 1i)), Struct_2(vec4<bool>(true, true, true, true), vec2<bool>(true, true), Struct_1(1u, 18074i, vec3<bool>(true, true, false), -1i, -1i)), Struct_2(vec4<bool>(false, true, true, false), vec2<bool>(true, true), Struct_1(4294967295u, -1451i, vec3<bool>(false, true, true), -19735i, 0i)), Struct_2(vec4<bool>(false, true, true, true), vec2<bool>(false, true), Struct_1(78036u, 1i, vec3<bool>(false, true, true), -1i, 50312i)), Struct_2(vec4<bool>(false, true, true, false), vec2<bool>(true, true), Struct_1(33282u, i32(-2147483648), vec3<bool>(false, false, true), 0i, -1i)), Struct_2(vec4<bool>(false, false, false, true), vec2<bool>(false, false), Struct_1(4294967295u, -15482i, vec3<bool>(true, true, true), 0i, 1i)), Struct_2(vec4<bool>(true, false, true, true), vec2<bool>(false, true), Struct_1(52016u, -6014i, vec3<bool>(true, false, false), -4777i, 0i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<bool>) -> vec3<u32> {
    return ~countOneBits(select(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.d.zy, vec2<u32>(u_input.d.x, u_input.b)), firstLeadingBit(1u), 466u), vec3<u32>(~46353u, _wgslsmith_add_u32(4294967295u, u_input.d.x), u_input.d.x), !vec3<bool>(false, arg_0.x, arg_0.x)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: i32) -> i32 {
    var var_0 = Struct_2(vec4<bool>(false, arg_1.b.x, true, true), arg_1.b, arg_1.c);
    var var_1 = Struct_2(vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(131f * -774f))) >= 1948f, var_0.a.x, arg_1.c.c.x, false), vec2<bool>(select(true, true, false), !arg_1.c.c.x), Struct_1(4294967295u, arg_3, var_0.c.c, max(arg_1.c.b << ((u_input.e | arg_0) % 32u), -43288i), -3604i & _wgslsmith_div_i32(firstTrailingBit(23277i), -6047i)));
    var var_2 = vec2<u32>(arg_1.c.a << (arg_1.c.a % 32u), arg_1.c.a);
    global3 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, arg_2.x), min(arg_2.x, arg_2.x));
    var_0 = Struct_2(select(var_1.a, !var_0.a, vec4<bool>(false, arg_1.b.x, var_1.c.a <= ~arg_0, true)), arg_1.a.zz, Struct_1(4294967295u, reverseBits(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(2147483647i, 6375i, -2147483647i, var_1.c.d)) ^ u_input.c.x), var_0.c.c, ~(~(-10094i)), ~firstLeadingBit(arg_1.c.e)));
    return countOneBits(-1i);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = -52316i;
    var var_1 = u_input.c;
    var var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(10411u), 8u)];
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 1u, 30661u)), ~u_input.d), reverseBits(countOneBits(0u))) ^ var_2.a, 8u)];
    var_1 = _wgslsmith_mod_vec4_i32(~u_input.c, _wgslsmith_sub_vec4_i32(vec4<i32>(17750i, 47700i, u_input.c.x, var_3.b) ^ min(vec4<i32>(u_input.a, 2147483647i, 2147483647i, var_0), vec4<i32>(var_2.d, -18641i, -10159i, arg_0.x)), ~vec4<i32>(-22188i, 2147483647i, 1806i, 1i))) & u_input.c;
    return !(!select(vec4<bool>(arg_2.c.x, true, var_3.c.x, true), vec4<bool>(true, true, !var_2.c.x, true), vec4<bool>(arg_2.c.x, false, true, any(vec3<bool>(true, false, false)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec4<u32>) -> vec3<f32> {
    global1 = false;
    global2 = true;
    let var_0 = true;
    var var_1 = Struct_2(func_4(reverseBits(firstTrailingBit(max(vec3<i32>(-1i, 0i, u_input.c.x), vec3<i32>(-1i, u_input.c.x, u_input.a)))), Struct_1(func_1(vec3<bool>(false, true, var_0)).x, max(~u_input.a, func_3(arg_1.x, Struct_2(vec4<bool>(true, true, false, var_0), vec2<bool>(var_0, true), global0[_wgslsmith_index_u32(u_input.e, 8u)]), vec3<u32>(4294967295u, arg_2.x, u_input.d.x), -2147483647i)), vec3<bool>(u_input.b < arg_2.x, true, false | var_0), abs(_wgslsmith_mult_i32(-2147483647i, u_input.c.x)), firstTrailingBit(0i) | _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(35165u, u_input.b, arg_1.x), vec3<u32>(arg_1.x, 4294967295u, arg_1.x)), u_input.a, select(select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(false, var_0, var_0)), vec3<bool>(false, false, var_0), var_0 & var_0), 2147483647i, -1i)), vec2<bool>(-196f <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(354f, -1047f)))), false), Struct_1(1u, ~0i, select(!(!vec3<bool>(false, var_0, var_0)), vec3<bool>(true & var_0, true, var_0 || true), !select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, false, var_0), vec3<bool>(false, var_0, true))), u_input.c.x, 743i));
    let var_2 = select(vec3<bool>(!var_0, select(var_0, all(!var_1.c.c), var_0), !var_1.b.x), var_1.c.c, !vec3<bool>(var_1.a.x, false, !var_0));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-474f - arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -2287f))), _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -676f)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1455f, -177f, arg_0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2147f, arg_0.x, 2405f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1289f, -676f, arg_0.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-450f, -1464f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-589f + 332f)))), func_1(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), false)), vec4<u32>(_wgslsmith_div_u32(u_input.d.x, ~u_input.b), u_input.e, max(4294967295u, u_input.b << (1u % 32u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, u_input.b), vec3<u32>(u_input.b, 109353u, u_input.e))) ^ (~firstTrailingBit(vec4<u32>(u_input.d.x, 86511u, 25901u, u_input.e)) >> (~(~vec4<u32>(4294967295u, u_input.d.x, 4294967295u, u_input.b)) % vec4<u32>(32u)))));
    var var_1 = global4[_wgslsmith_index_u32(u_input.d.x, 9u)];
    var var_2 = -u_input.c.yx;
    var_2 = abs(u_input.c.yy);
    global0 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(-227i);
}


struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec2<bool>(true, true), 1000f, vec2<i32>(7260i, 1i), vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(true, true), -498f, vec2<i32>(i32(-2147483648), 1i), vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(true, true), -201f, vec2<i32>(-18825i, -24828i), vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(true, true), 2516f, vec2<i32>(479i, 0i), vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(false, false), 785f, vec2<i32>(i32(-2147483648), 0i), vec4<bool>(false, true, false, true)), Struct_1(vec2<bool>(false, true), 770f, vec2<i32>(-10777i, -40396i), vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(true, true), -210f, vec2<i32>(0i, i32(-2147483648)), vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(true, true), -761f, vec2<i32>(-32039i, 1i), vec4<bool>(false, false, false, false)), Struct_1(vec2<bool>(true, true), 300f, vec2<i32>(0i, 40791i), vec4<bool>(false, false, true, false)), Struct_1(vec2<bool>(false, false), -166f, vec2<i32>(2147483647i, 42966i), vec4<bool>(false, true, true, false)), Struct_1(vec2<bool>(true, true), -1966f, vec2<i32>(2147483647i, i32(-2147483648)), vec4<bool>(true, false, true, true)), Struct_1(vec2<bool>(false, true), 1000f, vec2<i32>(2147483647i, 2147483647i), vec4<bool>(true, false, false, false)), Struct_1(vec2<bool>(false, true), 1210f, vec2<i32>(0i, 27970i), vec4<bool>(false, true, false, false)), Struct_1(vec2<bool>(true, false), -1374f, vec2<i32>(18243i, 1i), vec4<bool>(false, true, true, true)), Struct_1(vec2<bool>(true, true), 1697f, vec2<i32>(20694i, 39239i), vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(true, true), -1105f, vec2<i32>(5465i, 14197i), vec4<bool>(true, true, false, true)), Struct_1(vec2<bool>(false, true), -516f, vec2<i32>(11684i, 1i), vec4<bool>(true, true, true, true)), Struct_1(vec2<bool>(false, false), 952f, vec2<i32>(1i, 90506i), vec4<bool>(true, false, true, false)), Struct_1(vec2<bool>(false, true), 385f, vec2<i32>(44154i, 9696i), vec4<bool>(true, false, false, false)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    global0 = array<Struct_1, 19>();
    var var_0 = (countOneBits(reverseBits(~u_input.b.x)) << (13903u % 32u)) >= _wgslsmith_sub_u32(~(~1u), select(max(1u, 1u) | _wgslsmith_mult_u32(1u, u_input.b.x), u_input.b.x, select(arg_1.a.x, arg_0, arg_1.d.x) && !arg_0));
    var_0 = arg_0;
    return firstLeadingBit(select(~u_input.b.x, reverseBits(48955u), arg_1.a.x && (any(arg_1.d.ywz) & arg_0)));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<i32>) -> i32 {
    global0 = array<Struct_1, 19>();
    let var_0 = u_input.b.wxx;
    var var_1 = _wgslsmith_mult_vec2_u32(min(vec2<u32>(func_3(arg_1, Struct_1(vec2<bool>(false, false), 1030f, arg_2.yx, vec4<bool>(true, true, arg_1, false)), vec2<f32>(1000f, 766f)), var_0.x) | vec2<u32>(var_0.x, 0u), ~firstTrailingBit(var_0.zy)), vec2<u32>(_wgslsmith_add_u32(var_0.x, ~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), _wgslsmith_mod_u32(u_input.b.x, 21251u)));
    let var_2 = ~_wgslsmith_dot_vec3_i32(max(arg_2.yww, -arg_2.zzz), vec3<i32>(firstLeadingBit(countOneBits(u_input.a.x)), _wgslsmith_sub_i32(0i, u_input.c.x), 18651i & u_input.c.x));
    var var_3 = vec2<f32>(arg_0, arg_0);
    return arg_2.x;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_1, 19>();
    let var_0 = !arg_0;
    let var_1 = Struct_1(vec2<bool>(func_2(-257f, arg_0.x, _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 11740i, -23213i, u_input.c.x), vec4<i32>(u_input.a.x, 0i, 37074i, u_input.d))) != ~1i, all(!select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(false, arg_0.x, false), vec3<bool>(var_0.x, arg_0.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1891f - 428f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(815f)))))), u_input.c.xz, !(!select(!vec4<bool>(false, false, false, arg_0.x), vec4<bool>(var_0.x, true, false, false), select(arg_0.x, false, true))));
    var var_2 = Struct_1(vec2<bool>(true, !any(vec2<bool>(var_0.x, var_0.x)) & (false != (false & var_1.a.x))), var_1.b, _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.c.x, u_input.c.x) | vec2<i32>(0i, 1i), countOneBits(var_1.c)) >> ((select(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x), vec2<bool>(arg_0.x, var_0.x)) | _wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.b.yw)) % vec2<u32>(32u)), -firstTrailingBit(vec2<i32>(2147483647i, var_1.c.x)) | vec2<i32>(var_1.c.x, ~u_input.d)), select(!var_1.d, vec4<bool>(any(!vec4<bool>(arg_0.x, false, var_1.d.x, false)), true, !select(var_0.x, true, var_0.x), var_1.a.x), var_1.d));
    let var_3 = Struct_1(arg_0, var_2.b, vec2<i32>(1i, _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(27713i, 0i), 27936i), 9966i)), vec4<bool>(true, select(all(vec4<bool>(false, true, var_1.a.x, true)), any(select(vec2<bool>(var_1.d.x, false), vec2<bool>(var_1.d.x, true), vec2<bool>(true, false))), !(!arg_0.x)), var_1.d.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(16614u, u_input.b.x), firstTrailingBit(2547u)) <= u_input.b.x));
    return Struct_1(select(vec2<bool>(true | any(var_2.d.xww), var_0.x), !var_1.d.xy, !select(arg_0, select(arg_0, vec2<bool>(false, var_2.d.x), arg_0.x), any(vec4<bool>(var_2.d.x, var_0.x, var_3.d.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) + 1197f)), -vec2<i32>(var_3.c.x, 2147483647i), select(select(select(var_2.d, select(var_2.d, vec4<bool>(arg_0.x, arg_0.x, var_1.a.x, false), true), vec4<bool>(var_1.a.x, true, true, false)), !(!var_1.d), !vec4<bool>(var_1.d.x, true, false, var_3.a.x)), select(!(!var_1.d), vec4<bool>(-1i <= var_2.c.x, false, any(var_3.d.wy), any(var_1.d.wy)), !var_3.d), !var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.wzy, u_input.b.yxx), vec3<u32>(firstTrailingBit(u_input.b.x), 15085u, u_input.b.x))), 19u)];
    var var_1 = func_1(var_0.d.zy);
    let var_2 = func_1(vec2<bool>(var_1.d.x, var_1.a.x));
    let var_3 = vec2<bool>(!((var_0.b <= var_0.b) | true) || var_1.d.x, var_2.a.x);
    var var_4 = 585f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_sub_i32(21526i | _wgslsmith_mod_i32(49246i | u_input.d, var_2.c.x), countOneBits(_wgslsmith_clamp_i32(abs(var_0.c.x), i32(-1i) * -1i, var_0.c.x))));
}


struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_3,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 32>;

var<private> global2: vec4<bool>;

var<private> global3: Struct_3 = Struct_3(vec4<i32>(-1i, -11408i, 42679i, 6160i), 40952u, -1340f);

var<private> global4: f32 = -159f;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_2) -> f32 {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_clamp_u32(~4294967295u, arg_1.a, 22092u), ~select(vec2<i32>(3783i, arg_1.b.x), vec2<i32>(2147483647i, arg_1.b.x), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-332f, global3.c, -653f, 117f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-arg_3.b))), global2.x)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(arg_3.b - arg_3.b)))))));
    var var_1 = arg_0.zz;
    var var_2 = Struct_3(vec4<i32>(arg_3.a.b.x, -15724i, 7981i, countOneBits(_wgslsmith_dot_vec4_i32(max(global3.a, vec4<i32>(u_input.b.x, -2147483647i, arg_1.b.x, -2147483647i)), countOneBits(global3.a)))), 1u << (_wgslsmith_div_u32(_wgslsmith_add_u32(~global3.b, _wgslsmith_sub_u32(12876u, 1u)), global3.b) % 32u), -1291f);
    var var_3 = false;
    global2 = !vec4<bool>(any(vec2<bool>(1u == arg_3.a.a, true)), any(vec2<bool>(!arg_2.x, any(vec2<bool>(arg_2.x, true)))), !arg_2.x, false);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b.x)))))), _wgslsmith_f_op_f32(max(global3.c, global3.c)), select(false && all(select(arg_2, vec4<bool>(global2.x, false, arg_2.x, global2.x), arg_2)), any(!arg_2) & false, any(vec4<bool>(false, true, any(vec4<bool>(false, false, false, true)), arg_2.x)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = Struct_3(~(global3.a << (vec4<u32>(~67521u, 15561u, max(arg_3.a, global3.b), ~arg_1.x) % vec4<u32>(32u))), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_sub_vec3_u32(~vec3<u32>(14164u, arg_1.x, 1u), arg_1), Struct_1(arg_3.a, min(vec2<i32>(2254i, global3.a.x), vec2<i32>(-13091i, u_input.b.x))), vec4<bool>(global2.x, global2.x, global2.x, all(vec3<bool>(false, true, true))), Struct_2(Struct_1(27755u, arg_3.b), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, global3.c, arg_0.x, arg_0.x), vec4<f32>(arg_0.x, -449f, arg_0.x, -350f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1361f, -1499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), 469f)));
    let var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(22316u)), 32u)];
    var var_3 = Struct_1(~1u, u_input.b);
    var var_4 = Struct_2(arg_3, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1995f, var_2.c, var_0.c, var_1.x) - vec4<f32>(-1282f, var_2.c, 1000f, -700f)), vec4<f32>(global3.c, global3.c, var_2.c, 999f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c, -1597f, 253f, -926f))), true)))));
    return arg_1.xz;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-332f)));
    var var_0 = arg_2.a;
    let var_1 = Struct_4(Struct_3(firstTrailingBit(-(arg_2.a | arg_2.a)), 0u, arg_0.x), Struct_1(~arg_2.b, ~vec2<i32>(2147483647i, -62903i)), global1[_wgslsmith_index_u32(1u ^ ~arg_2.b, 32u)], 51375i);
    let var_2 = var_1.a;
    let var_3 = Struct_2(Struct_1(countOneBits(countOneBits(0u)), ~(~vec2<i32>(u_input.a, var_2.a.x)) | global3.a.yz), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.c, -861f, 254f, 332f), arg_0)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(-957f, arg_2.c, -316f, var_2.c))))))));
    return Struct_1(67895u, ~select(-vec2<i32>(global3.a.x, var_0.x), ~_wgslsmith_add_vec2_i32(vec2<i32>(-19118i, -2147483647i), vec2<i32>(var_1.a.a.x, 58603i)), vec2<bool>(false, global2.x)));
}

fn func_1(arg_0: vec4<u32>) -> Struct_4 {
    let var_0 = 515f;
    let var_1 = !vec4<bool>(all(!vec4<bool>(global2.x, false, true, false)), false && any(!vec4<bool>(global2.x, global2.x, global2.x, global2.x)), !global2.x, global2.x | any(vec2<bool>(true, global2.x)));
    let var_2 = u_input.a;
    var var_3 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(107f, -887f, var_0, 867f), vec4<f32>(1000f, var_0, 139f, 1607f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1258f, global3.c, -723f, 214f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(775f + var_0), 842f, var_0, var_0))), reverseBits(func_2(vec2<f32>(_wgslsmith_f_op_f32(-global3.c), _wgslsmith_f_op_f32(abs(436f))), ~vec3<u32>(1403u, global3.b, global3.b) & vec3<u32>(arg_0.x, global3.b, 1u), global3.a >> (arg_0 % vec4<u32>(32u)), Struct_1(abs(1u), vec2<i32>(-8468i, 20635i)))), global1[_wgslsmith_index_u32(~select(func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-521f, var_0), vec2<f32>(var_0, -280f), false)), vec3<u32>(0u, 1u, global3.b), vec4<i32>(-42657i, -37732i, 1i, 6043i) | vec4<i32>(var_2, 52978i, -2339i, var_2), Struct_1(arg_0.x, vec2<i32>(var_2, -41089i))).x, global3.b, !select(global2.x, var_1.x, true)), 32u)], false);
    var var_4 = select(global2.zzw, !(!global2.zww), !(!var_1.xzw));
    return Struct_4(Struct_3(-global3.a, ~(~arg_0.x), -243f), func_4(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1224f - 804f), _wgslsmith_f_op_f32(var_0 - -1697f))), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(step(1042f, var_0)))), vec2<u32>(firstLeadingBit(1u), 77206u), Struct_3(~firstTrailingBit(global3.a), abs(15811u), _wgslsmith_div_f32(global3.c, _wgslsmith_f_op_f32(-var_0))), true), Struct_3(min(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2, -1938i, -4874i, var_2), global3.a, vec4<i32>(var_3.b.x, 19585i, var_3.b.x, -2147483647i))), vec4<i32>(~u_input.b.x, abs(global3.a.x), -var_2, var_3.b.x)), ~func_4(vec4<f32>(var_0, global3.c, 1000f, -643f), vec2<u32>(arg_0.x, 49895u), Struct_3(global3.a, var_3.a, var_0), false).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.c), _wgslsmith_f_op_f32(-global3.c))) * _wgslsmith_f_op_f32(-1795f * _wgslsmith_f_op_f32(-global3.c)))), 55980i);
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.c, 483f, arg_0.c.c))) - _wgslsmith_div_vec3_f32(vec3<f32>(-548f, 1038f, -146f), vec3<f32>(global3.c, -1268f, arg_0.c.c))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 32>();
    let x = u_input.a;
    s_output = func_5(func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(~global3.b, global3.b, 17029u << (global3.b % 32u), ~15069u), reverseBits(vec4<u32>(44725u, 54912u, global3.b, 1u) ^ vec4<u32>(14881u, 43742u, global3.b, 4294967295u)))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(global3.a, vec4<i32>(-2147483647i, global3.a.x, global3.a.x, 53424i)), firstLeadingBit(global3.a)), global3.a.x), _wgslsmith_div_vec2_i32(func_4(vec4<f32>(global3.c, 1670f, 248f, global3.c), vec2<u32>(1u, 4294967295u), global1[_wgslsmith_index_u32(~global3.b, 32u)], true).b, _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 48536i), u_input.b ^ u_input.b))));
}


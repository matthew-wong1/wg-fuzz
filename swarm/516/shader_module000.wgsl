struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<i32>,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<bool>(true, true), 0u, vec2<i32>(2147483647i, 0i), true, vec2<i32>(-10208i, -27840i)), Struct_1(vec2<bool>(false, false), 22449u, vec2<i32>(37757i, -32346i), true, vec2<i32>(-1i, -1i)), Struct_1(vec2<bool>(true, false), 4294967295u, vec2<i32>(1i, 0i), true, vec2<i32>(1i, 0i)), Struct_1(vec2<bool>(true, true), 103843u, vec2<i32>(3020i, 12791i), false, vec2<i32>(-27058i, 2147483647i)), Struct_1(vec2<bool>(true, true), 48498u, vec2<i32>(-55653i, 16874i), true, vec2<i32>(23312i, -7136i)), Struct_1(vec2<bool>(true, false), 16696u, vec2<i32>(45443i, -35372i), false, vec2<i32>(0i, -65570i)), Struct_1(vec2<bool>(false, true), 33369u, vec2<i32>(0i, 1i), false, vec2<i32>(58456i, 0i)), Struct_1(vec2<bool>(true, true), 73697u, vec2<i32>(1i, -9982i), true, vec2<i32>(14669i, 17153i)), Struct_1(vec2<bool>(false, true), 78728u, vec2<i32>(-12192i, 1i), true, vec2<i32>(4226i, -1812i)), Struct_1(vec2<bool>(false, true), 0u, vec2<i32>(-1i, -1i), true, vec2<i32>(65052i, -1i)), Struct_1(vec2<bool>(false, true), 0u, vec2<i32>(i32(-2147483648), 0i), false, vec2<i32>(i32(-2147483648), -6102i)), Struct_1(vec2<bool>(false, true), 0u, vec2<i32>(-1i, i32(-2147483648)), true, vec2<i32>(43579i, -32923i)), Struct_1(vec2<bool>(false, true), 147124u, vec2<i32>(35452i, 2346i), true, vec2<i32>(-38822i, -67982i)), Struct_1(vec2<bool>(true, true), 13353u, vec2<i32>(-1i, -45909i), true, vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), 0u, vec2<i32>(1i, 0i), true, vec2<i32>(0i, 1i)), Struct_1(vec2<bool>(true, false), 9067u, vec2<i32>(i32(-2147483648), i32(-2147483648)), false, vec2<i32>(0i, 20710i)), Struct_1(vec2<bool>(true, true), 4294967295u, vec2<i32>(-1i, -9160i), true, vec2<i32>(-1i, -1i)), Struct_1(vec2<bool>(true, false), 4294967295u, vec2<i32>(2147483647i, i32(-2147483648)), true, vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<bool>(false, true), 4294967295u, vec2<i32>(-49010i, i32(-2147483648)), false, vec2<i32>(i32(-2147483648), 34166i)), Struct_1(vec2<bool>(true, false), 23183u, vec2<i32>(-13608i, 13730i), false, vec2<i32>(8820i, -2262i)), Struct_1(vec2<bool>(true, false), 21877u, vec2<i32>(i32(-2147483648), -1i), false, vec2<i32>(-13000i, 22696i)), Struct_1(vec2<bool>(true, false), 7285u, vec2<i32>(i32(-2147483648), 39026i), false, vec2<i32>(-26585i, 14530i)), Struct_1(vec2<bool>(false, true), 0u, vec2<i32>(-1i, 12001i), false, vec2<i32>(0i, 1i)), Struct_1(vec2<bool>(false, false), 1u, vec2<i32>(i32(-2147483648), 39810i), true, vec2<i32>(4289i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), 52620u, vec2<i32>(2147483647i, 22322i), true, vec2<i32>(0i, -1i)), Struct_1(vec2<bool>(false, true), 58537u, vec2<i32>(-1i, 26168i), true, vec2<i32>(i32(-2147483648), 8965i)), Struct_1(vec2<bool>(true, true), 51786u, vec2<i32>(2147483647i, 2147483647i), false, vec2<i32>(0i, 0i)), Struct_1(vec2<bool>(true, true), 42589u, vec2<i32>(13083i, -45681i), false, vec2<i32>(0i, 0i)));

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<bool>(true, true), 1u, vec2<i32>(-59484i, -1i), true, vec2<i32>(1i, -69574i)), Struct_1(vec2<bool>(false, false), 0u, vec2<i32>(21118i, 0i), false, vec2<i32>(32717i, 0i)), Struct_1(vec2<bool>(true, true), 0u, vec2<i32>(65122i, -16206i), false, vec2<i32>(0i, i32(-2147483648))), Struct_1(vec2<bool>(true, true), 0u, vec2<i32>(-1i, i32(-2147483648)), true, vec2<i32>(2147483647i, 1i)), Struct_1(vec2<bool>(true, true), 18580u, vec2<i32>(-1i, -10607i), true, vec2<i32>(0i, 0i)), Struct_1(vec2<bool>(true, false), 4294967295u, vec2<i32>(-26795i, -13056i), false, vec2<i32>(-13667i, 1i)), Struct_1(vec2<bool>(true, true), 1u, vec2<i32>(1i, 23330i), true, vec2<i32>(1i, 2147483647i)), Struct_1(vec2<bool>(true, true), 4294967295u, vec2<i32>(0i, -6387i), false, vec2<i32>(0i, 13346i)), Struct_1(vec2<bool>(false, false), 10501u, vec2<i32>(-22294i, 34536i), false, vec2<i32>(0i, 4629i)), Struct_1(vec2<bool>(false, true), 4294967295u, vec2<i32>(-49912i, 0i), false, vec2<i32>(1i, 21325i)), Struct_1(vec2<bool>(false, true), 22074u, vec2<i32>(-37618i, -35213i), true, vec2<i32>(-1i, 0i)), Struct_1(vec2<bool>(false, false), 0u, vec2<i32>(0i, -1i), false, vec2<i32>(16689i, 4404i)), Struct_1(vec2<bool>(false, true), 1u, vec2<i32>(1i, -1i), true, vec2<i32>(i32(-2147483648), 0i)), Struct_1(vec2<bool>(false, true), 0u, vec2<i32>(-1i, 1i), false, vec2<i32>(i32(-2147483648), 31126i)), Struct_1(vec2<bool>(true, true), 0u, vec2<i32>(76197i, 1i), true, vec2<i32>(1i, 57282i)), Struct_1(vec2<bool>(true, false), 43946u, vec2<i32>(2147483647i, -42633i), false, vec2<i32>(-28711i, 47420i)), Struct_1(vec2<bool>(true, true), 4294967295u, vec2<i32>(0i, 1i), false, vec2<i32>(i32(-2147483648), -54278i)), Struct_1(vec2<bool>(false, true), 4450u, vec2<i32>(0i, -47429i), true, vec2<i32>(-1i, 1i)));

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<bool>(false, true), 25804u, vec2<i32>(30723i, 0i), true, vec2<i32>(0i, 370i)), Struct_1(vec2<bool>(true, false), 22847u, vec2<i32>(-1i, 30856i), false, vec2<i32>(1i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), 16678u, vec2<i32>(-1i, 0i), false, vec2<i32>(9981i, 13686i)), Struct_1(vec2<bool>(false, false), 0u, vec2<i32>(0i, 35188i), false, vec2<i32>(14667i, 4953i)), Struct_1(vec2<bool>(true, false), 82370u, vec2<i32>(24929i, 9104i), false, vec2<i32>(-38600i, 2147483647i)), Struct_1(vec2<bool>(true, true), 21022u, vec2<i32>(-1i, -62681i), true, vec2<i32>(-1i, 2147483647i)), Struct_1(vec2<bool>(false, true), 1222u, vec2<i32>(10027i, 49945i), true, vec2<i32>(-1i, 19917i)), Struct_1(vec2<bool>(true, false), 4294967295u, vec2<i32>(0i, 24553i), false, vec2<i32>(2147483647i, -7310i)), Struct_1(vec2<bool>(true, false), 1u, vec2<i32>(37647i, 1i), false, vec2<i32>(1i, 1292i)), Struct_1(vec2<bool>(true, true), 1u, vec2<i32>(-11288i, 67671i), false, vec2<i32>(2147483647i, 26216i)), Struct_1(vec2<bool>(true, false), 4294967295u, vec2<i32>(7152i, 2147483647i), false, vec2<i32>(-51631i, -35438i)), Struct_1(vec2<bool>(false, false), 4294967295u, vec2<i32>(1i, -1i), false, vec2<i32>(32387i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), 4294967295u, vec2<i32>(-1i, 39002i), false, vec2<i32>(0i, 1i)), Struct_1(vec2<bool>(false, false), 75071u, vec2<i32>(27536i, -1i), false, vec2<i32>(0i, 8304i)), Struct_1(vec2<bool>(true, false), 18631u, vec2<i32>(-3922i, -530i), true, vec2<i32>(i32(-2147483648), -1i)), Struct_1(vec2<bool>(false, true), 0u, vec2<i32>(2147483647i, 0i), true, vec2<i32>(1i, 8996i)), Struct_1(vec2<bool>(false, true), 0u, vec2<i32>(2147483647i, i32(-2147483648)), false, vec2<i32>(1i, -1i)), Struct_1(vec2<bool>(false, true), 4294967295u, vec2<i32>(-33181i, 0i), false, vec2<i32>(-26368i, -30532i)), Struct_1(vec2<bool>(true, false), 0u, vec2<i32>(2147483647i, 5384i), false, vec2<i32>(41410i, 3347i)), Struct_1(vec2<bool>(true, true), 20922u, vec2<i32>(2147483647i, 33177i), true, vec2<i32>(33367i, -23817i)), Struct_1(vec2<bool>(true, true), 36145u, vec2<i32>(-5109i, -21634i), false, vec2<i32>(2147483647i, 0i)), Struct_1(vec2<bool>(false, false), 64734u, vec2<i32>(-1i, 40582i), true, vec2<i32>(1i, 33850i)), Struct_1(vec2<bool>(false, true), 65091u, vec2<i32>(2147483647i, 8355i), true, vec2<i32>(0i, 10665i)), Struct_1(vec2<bool>(false, false), 36145u, vec2<i32>(21092i, 0i), false, vec2<i32>(-53568i, -1i)), Struct_1(vec2<bool>(true, true), 4294967295u, vec2<i32>(-35103i, 1i), true, vec2<i32>(-1i, 19338i)), Struct_1(vec2<bool>(true, true), 1u, vec2<i32>(2147483647i, 35700i), true, vec2<i32>(-6500i, 1i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(vec2<bool>(any(select(select(vec4<bool>(arg_1.a.x, true, arg_0.d, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(arg_0.d, arg_1.d, false, arg_2.a.x), vec4<bool>(arg_0.d, false, arg_0.d, arg_2.d), arg_1.d), vec4<bool>(false, arg_1.d, true, true))), arg_0.a.x), arg_0.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(-12165i, _wgslsmith_div_i32(2147483647i, u_input.a.x)), countOneBits(_wgslsmith_add_vec2_i32(min(vec2<i32>(31701i, 13044i), vec2<i32>(-2147483647i, 2147483647i)), abs(arg_1.c))), vec2<i32>(1i, min(u_input.a.x, 0i)) << (vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)) % vec2<u32>(32u))), all(vec3<bool>(true, true, true)) & true, -vec2<i32>(-1i, 0i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(266f - 1414f), 493f)));
    let var_2 = arg_1.d;
    global0 = array<Struct_1, 28>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1552f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(var_1, _wgslsmith_f_op_f32(-var_1))), _wgslsmith_div_f32(var_1, var_1)))));
    return firstTrailingBit(-_wgslsmith_dot_vec2_i32(arg_1.c << ((u_input.b.xx & vec2<u32>(4294967295u, arg_0.b)) % vec2<u32>(32u)), ~vec2<i32>(u_input.a.x, arg_1.c.x)));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    global1 = array<Struct_1, 18>();
    let var_0 = 1101f;
    var var_1 = _wgslsmith_mult_i32(firstTrailingBit(u_input.a.x), 2147483647i);
    var var_2 = global2[_wgslsmith_index_u32(55324u, 26u)];
    var_2 = Struct_1(vec2<bool>(min(32669i, 8090i) == u_input.a.x, false), 5110u, _wgslsmith_add_vec2_i32(~min(~var_2.c, var_2.c), vec2<i32>(u_input.a.x, func_3(Struct_1(vec2<bool>(false, true), var_2.b, vec2<i32>(-1i, u_input.a.x), var_2.d, u_input.a.xz), Struct_1(vec2<bool>(false, var_2.d), u_input.b.x, u_input.a.zz, false, vec2<i32>(-30714i, 0i)), Struct_1(vec2<bool>(var_2.d, false), 4294967295u, u_input.a.yz, false, vec2<i32>(-2147483647i, -11385i))))), var_2.a.x, countOneBits(u_input.a.yz));
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(-var_0)));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_2(vec2<u32>(25947u, _wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(arg_1.b, u_input.b.x, 66082u, arg_2.x))))), _wgslsmith_f_op_f32(arg_0.x + 1565f));
    global1 = array<Struct_1, 18>();
    let var_1 = countOneBits(vec4<i32>(-_wgslsmith_add_i32(~arg_1.c.x, -2147483647i), ~reverseBits(i32(-1i) * -2147483647i), 2686i, u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -883f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.x, var_0.x)))))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 835f, _wgslsmith_f_op_f32(step(var_0.x, 1485f))));
    return Struct_1(select(vec2<bool>(arg_1.b <= ~49564u, !all(arg_1.a)), select(select(arg_1.a, vec2<bool>(true, true), arg_1.a.x), !arg_1.a, !vec2<bool>(arg_1.a.x, arg_1.d)), arg_1.d), arg_2.x, vec2<i32>(arg_1.c.x & arg_1.c.x, -(1i << (firstLeadingBit(15847u) % 32u))), !(arg_1.b > ~21235u), vec2<i32>(-17575i, -(~u_input.a.x)));
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = ~select(firstLeadingBit(~_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 0i, u_input.a.x))), ~(abs(u_input.a) ^ countOneBits(vec3<i32>(-2147483647i, -1i, arg_0.e.x))), arg_0.d);
    let var_1 = arg_0;
    let var_2 = firstTrailingBit(var_1.e.x);
    global1 = array<Struct_1, 18>();
    global2 = array<Struct_1, 26>();
    return StorageBuffer(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-143f)))), u_input.b.xx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - 1072f), _wgslsmith_f_op_f32(-1691f - -234f), -821f, -1000f))), ~countOneBits(~u_input.b.ww) & ~(~u_input.b.yz & vec2<u32>(4969u, var_1.b)), vec4<f32>(-478f, -870f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(721f))), _wgslsmith_f_op_f32(-1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(_wgslsmith_add_u32(~u_input.b.x, ~u_input.b.x), ~abs(u_input.b.x)) | ~max(31396u, ~u_input.b.x)), 18u)];
    global1 = array<Struct_1, 18>();
    var var_1 = global1[_wgslsmith_index_u32(26792u, 18u)];
    let var_2 = min(vec3<i32>(~(~(~24690i)), 41901i, -27922i), -_wgslsmith_mod_vec3_i32(u_input.a, u_input.a));
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(898f, 737f) + vec2<f32>(1336f, 1042f)))), global0[_wgslsmith_index_u32(u_input.b.x, 28u)], _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(46939u, var_1.b, 1u, var_0.b), vec4<u32>(u_input.b.x, 0u, var_0.b, u_input.b.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.b, var_1.b, 15660u), u_input.b))));
}


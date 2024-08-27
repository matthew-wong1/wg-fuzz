struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(-65784i, Struct_1(-1i, false, vec4<i32>(-64326i, i32(-2147483648), 0i, 30360i), false), -1i), Struct_2(i32(-2147483648), Struct_1(i32(-2147483648), false, vec4<i32>(2147483647i, -30874i, 0i, 1i), true), 1i), Struct_2(0i, Struct_1(4562i, false, vec4<i32>(-77529i, 86171i, 1i, i32(-2147483648)), false), -36648i), Struct_2(-9554i, Struct_1(-1i, true, vec4<i32>(2147483647i, -15718i, 1i, 0i), false), -16308i), Struct_2(2147483647i, Struct_1(-3250i, false, vec4<i32>(-1i, -3379i, 7566i, 37141i), true), -36289i), Struct_2(2263i, Struct_1(32766i, false, vec4<i32>(3016i, 7757i, 31543i, 18758i), true), -1i), Struct_2(-1i, Struct_1(-1i, true, vec4<i32>(-14095i, -48740i, i32(-2147483648), -41773i), true), 2147483647i), Struct_2(-1i, Struct_1(1i, true, vec4<i32>(3124i, i32(-2147483648), -27985i, 29237i), false), -1i), Struct_2(19859i, Struct_1(1i, true, vec4<i32>(-65133i, -2292i, -5592i, -1i), false), -2834i), Struct_2(i32(-2147483648), Struct_1(i32(-2147483648), false, vec4<i32>(-1i, 2147483647i, i32(-2147483648), 2147483647i), true), i32(-2147483648)));

var<private> global2: array<vec3<i32>, 28> = array<vec3<i32>, 28>(vec3<i32>(-7424i, -1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 1i, 2219i), vec3<i32>(36433i, 1i, i32(-2147483648)), vec3<i32>(-1i, -7434i, 1i), vec3<i32>(0i, 1i, 0i), vec3<i32>(-1i, 28483i, 0i), vec3<i32>(2147483647i, -80962i, 10243i), vec3<i32>(66760i, 0i, -1367i), vec3<i32>(-7989i, 55465i, i32(-2147483648)), vec3<i32>(-5073i, 2147483647i, -6498i), vec3<i32>(17664i, -1846i, -29367i), vec3<i32>(i32(-2147483648), -13727i, 1i), vec3<i32>(5143i, 11266i, i32(-2147483648)), vec3<i32>(2147483647i, 1i, 1i), vec3<i32>(34181i, -1i, 2889i), vec3<i32>(-1i, 20724i, -26673i), vec3<i32>(2147483647i, 3109i, 2147483647i), vec3<i32>(0i, -50647i, 1186i), vec3<i32>(25235i, -8523i, 1i), vec3<i32>(1i, -1767i, i32(-2147483648)), vec3<i32>(-34387i, i32(-2147483648), 2147483647i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(24206i, 0i, -16063i), vec3<i32>(-85474i, i32(-2147483648), -20289i), vec3<i32>(2147483647i, -39818i, 21634i), vec3<i32>(1i, 51791i, -1i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(7532i, -51718i, 2147483647i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_3(Struct_1(~u_input.c, false, vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-27389i, 0i), ~u_input.a), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -12112i, u_input.c), global2[_wgslsmith_index_u32(4294967295u, 28u)]), u_input.a.x, u_input.a.x), select(true, true, true)), countOneBits(reverseBits(firstTrailingBit(min(vec3<u32>(1u, 1u, u_input.b), vec3<u32>(3373u, u_input.d, u_input.b))))), Struct_2(u_input.c, Struct_1(~(i32(-1i) * -19878i), (6084u << (0u % 32u)) >= u_input.d, -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, u_input.c, u_input.e, 19195i), vec4<i32>(u_input.a.x, -29421i, u_input.a.x, 1i)), true), u_input.a.x));
    let var_1 = vec2<bool>(true, all(vec3<bool>(all(vec2<bool>(var_0.a.b, var_0.c.b.b)), true, var_0.a.d)));
    global2 = array<vec3<i32>, 28>();
    let var_2 = Struct_4(vec4<f32>(-143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)) - 1f), -565f, 364f), Struct_3(Struct_1(-29394i & min(u_input.e, -14976i), true, reverseBits(vec4<i32>(var_0.c.b.c.x, var_0.a.a, var_0.a.a, 1i)) << (firstTrailingBit(vec4<u32>(var_0.b.x, 17619u, var_0.b.x, 1u)) % vec4<u32>(32u)), !any(var_1)), abs(~max(var_0.b, var_0.b)), var_0.c));
    let var_3 = var_2.b.a.a ^ -2147483647i;
    return var_2.b.c.b.c;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1419f, -554f), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(-923f + 1482f), -1371f))), Struct_3(Struct_1(u_input.c, any(vec3<bool>(false, false, true)) || all(vec4<bool>(false, false, true, true)), func_3(), all(vec3<bool>(true, true, true))), ~reverseBits(vec3<u32>(4294967295u, 7268u, 13707u)), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.a.x, 0i), func_3().wwy), Struct_1(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(0u, 28u)]), true, vec4<i32>(u_input.c, u_input.e, u_input.a.x, 2147483647i), false), ~(u_input.e | u_input.c))));
    var var_1 = any(!select(select(select(vec2<bool>(true, false), vec2<bool>(true, var_0.b.a.d), false), vec2<bool>(true, true), vec2<bool>(var_0.b.a.d, var_0.b.c.b.b)), select(!vec2<bool>(var_0.b.a.d, var_0.b.a.d), vec2<bool>(var_0.b.a.d, true), true), select(select(vec2<bool>(false, var_0.b.a.b), vec2<bool>(true, var_0.b.a.b), vec2<bool>(true, var_0.b.a.b)), vec2<bool>(true, true), var_0.b.c.b.b != var_0.b.c.b.d)));
    global2 = array<vec3<i32>, 28>();
    let var_2 = Struct_1(39211i | _wgslsmith_add_i32(~(-1i), 40512i | u_input.e), ~select(u_input.b >> (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.b.x, 1u, u_input.d), vec3<u32>(u_input.b, 4294967295u, var_0.b.b.x)), var_0.b.c.b.d) <= 0u, _wgslsmith_mult_vec4_i32(-vec4<i32>(1i, -6789i, -30250i, var_0.b.a.c.x), vec4<i32>(2147483647i, firstTrailingBit(var_0.b.c.c), -var_0.b.c.a, -u_input.a.x)) << (select(vec4<u32>(_wgslsmith_mult_u32(12545u, 25408u), 21026u, 1u, var_0.b.b.x), min(vec4<u32>(242u, 1u, var_0.b.b.x, 1u), vec4<u32>(var_0.b.b.x, 40497u, 4294967295u, 1u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 30763u, var_0.b.b.x, u_input.b), vec4<u32>(u_input.d, var_0.b.b.x, var_0.b.b.x, u_input.d)), true) % vec4<u32>(32u)), false);
    var var_3 = var_0.b.a;
    return 0u;
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_2, 28>();
    var var_0 = countOneBits(~(~vec3<u32>(u_input.b, u_input.d, 18942u))) >> (max(~(~(vec3<u32>(u_input.d, 4294967295u, u_input.d) & vec3<u32>(u_input.d, 47372u, 3000u))), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.b, u_input.d), select(vec3<u32>(u_input.b, 12939u, u_input.b), vec3<u32>(6890u, 4294967295u, 24411u), true)) | ~(~vec3<u32>(15878u, u_input.d, 3514u))) % vec3<u32>(32u));
    var var_1 = vec2<i32>(firstLeadingBit(-32171i), countOneBits(54144i) & abs(-(u_input.e << (37691u % 32u))));
    global1 = array<Struct_2, 10>();
    let var_2 = reverseBits(global2[_wgslsmith_index_u32(~func_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1292f, 1057f, -1223f, 2402f), vec4<f32>(1150f, 1981f, 462f, -1220f))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(577f, -800f)))), 28u)] << ((vec3<u32>(u_input.b, u_input.d, abs(4294967295u)) & select(~vec3<u32>(22543u, u_input.b, u_input.d), abs(vec3<u32>(u_input.d, u_input.d, 84864u)), all(vec4<bool>(true, false, false, true)))) % vec3<u32>(32u)));
    return Struct_3(Struct_1(var_1.x, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))), -(~select(vec4<i32>(u_input.c, u_input.c, var_1.x, 14121i), vec4<i32>(-2147483647i, 2147483647i, var_1.x, var_2.x), vec4<bool>(false, true, false, true))), true), vec3<u32>(firstTrailingBit(countOneBits(~u_input.b)), 140767u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, ~u_input.b), var_0.yx)), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~countOneBits(func_2(vec4<f32>(-119f, -709f, -1281f, 805f), vec2<f32>(-194f, 2014f))), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 105978u), vec2<u32>(u_input.b, u_input.b)) & u_input.b)), 28u)]);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: vec2<i32>) -> Struct_3 {
    global0 = array<Struct_2, 28>();
    var var_0 = _wgslsmith_add_i32(-max(countOneBits(32053i), ~(-1i)), -20492i);
    var var_1 = arg_0.c.b;
    global1 = array<Struct_2, 10>();
    let var_2 = abs(arg_0.b.zy);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 28>();
    let var_0 = countOneBits(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(1u, u_input.d, 0u, u_input.d)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, 46256u, u_input.b, 18482u), vec4<u32>(0u, 1u, u_input.d, 50236u)))) >> (~select(firstTrailingBit(vec4<u32>(u_input.d, 3237u, 65499u, u_input.d)), vec4<u32>(22845u, u_input.b, u_input.b, u_input.d), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(round(-148f));
    let var_2 = func_4(func_1(), u_input.a.x, ~_wgslsmith_div_i32(u_input.a.x, -23891i), u_input.a);
    let var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1821f + -290f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(606f))))), vec2<f32>(_wgslsmith_f_op_f32(391f - _wgslsmith_f_op_f32(-1000f + 738f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-421f)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, -504f), vec2<f32>(-259f, 387f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(590f, _wgslsmith_f_op_f32(-1000f * -1073f))), var_2.a.d)), vec2<bool>(var_2.a.b, (i32(-1i) * -1i) > var_2.a.c.x)));
    global1 = array<Struct_2, 10>();
    let var_4 = ~6838u;
    let x = u_input.a;
    s_output = StorageBuffer(~((reverseBits(var_4) << (var_0.x % 32u)) | ~1u), 4294967295u, -_wgslsmith_div_i32((var_2.c.c ^ u_input.e) | ~14107i, ~u_input.a.x | max(var_2.c.a, 2147483647i)));
}


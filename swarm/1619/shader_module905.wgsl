struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<f32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: Struct_2;

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(29273i, i32(-2147483648)), vec2<i32>(67315i, 30453i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-24577i, -41167i), vec2<i32>(6951i, -13313i), vec2<i32>(-35234i, 1i), vec2<i32>(1i, 0i), vec2<i32>(0i, -1614i), vec2<i32>(2147483647i, 24576i), vec2<i32>(-59685i, 20463i), vec2<i32>(1i, 2147483647i), vec2<i32>(-47617i, 2147483647i), vec2<i32>(-7050i, 11014i), vec2<i32>(-1i, 1i), vec2<i32>(-55481i, i32(-2147483648)), vec2<i32>(1i, -92554i), vec2<i32>(-14523i, 2147483647i), vec2<i32>(14350i, 2147483647i), vec2<i32>(1611i, 24387i), vec2<i32>(-7979i, 35131i), vec2<i32>(-20516i, 1i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, -44396i), vec2<i32>(12637i, 1i), vec2<i32>(5391i, 27960i), vec2<i32>(-2248i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(0i, -18891i), vec2<i32>(-43822i, 2147483647i), vec2<i32>(-54603i, 0i));

var<private> global3: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

var<private> global4: Struct_3 = Struct_3(vec4<i32>(-6748i, 24530i, i32(-2147483648), 0i), 1u, Struct_2(Struct_1(565f), vec3<i32>(17078i, 0i, 12096i), Struct_1(1286f), vec3<f32>(1205f, 934f, -1103f), 0i), Struct_2(Struct_1(1000f), vec3<i32>(18617i, 0i, 13710i), Struct_1(-209f), vec3<f32>(-512f, 572f, 454f), 2147483647i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>) -> vec3<f32> {
    var var_0 = ~(~(~vec3<u32>(u_input.a, ~28675u, ~global4.b)));
    global3 = array<vec3<bool>, 28>();
    var var_1 = -(~max(vec3<i32>(global1.x, -58748i, 41177i) >> (vec3<u32>(49652u, u_input.a, var_0.x) % vec3<u32>(32u)), -(~vec3<i32>(-9067i, 2147483647i, global0.b.x))));
    var var_2 = !vec2<bool>(!(_wgslsmith_f_op_f32(sign(-736f)) <= -491f), any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    var var_3 = vec3<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(620f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.a, 803f)))));
    return _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1840f)), _wgslsmith_f_op_f32(1726f + var_3.x), var_3.x)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(211f)), 1400f)))), ~vec3<i32>(~global1.x, ~(-1i), 10295i ^ global1.x) ^ -max(global0.b, vec3<i32>(52433i, -94974i, global4.d.e)), global0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-845f, global4.d.c.a), 1176f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1123f) - -1091f), _wgslsmith_f_op_f32(-1476f - _wgslsmith_f_op_f32(global0.a.a - 414f)))), abs(global4.c.e));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(global0.d.x, 288f, var_0.c.a)))), _wgslsmith_f_op_vec3_f32(round(global0.d))))));
    global1 = global4.a;
    global1 = global4.a;
    global4 = Struct_3(firstLeadingBit(-min(global4.a, -vec4<i32>(0i, -1451i, global1.x, 41354i))), ~49487u >> (u_input.a % 32u), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f))), abs(vec3<i32>(2147483647i, var_0.b.x, var_0.e)) ^ vec3<i32>(1i, _wgslsmith_add_i32(var_0.e, 4494i), _wgslsmith_dot_vec2_i32(vec2<i32>(37929i, global4.d.e), var_0.b.yx)), global0.c, global0.d, -8223i), global4.c);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(467f, var_0.c.a)) * var_1.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-2505f)))))));
}

fn func_1() -> Struct_3 {
    global0 = Struct_2(Struct_1(-357f), vec3<i32>(1i | _wgslsmith_sub_i32(global4.d.b.x, 1i), global1.x, firstTrailingBit(global4.d.e)), func_2(), global0.d, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0.b.x, -66975i, -2147483647i, global0.b.x)), countOneBits(global4.a))), global4.c.b.xy));
    var var_0 = Struct_3(-(~(~abs(global4.a))), 1u, global4.c, Struct_2(Struct_1(415f), -(~global4.d.b) | _wgslsmith_mult_vec3_i32(-vec3<i32>(global4.c.b.x, global4.a.x, -2147483647i), global0.b), global4.c.a, global4.d.d, -global4.a.x));
    global3 = array<vec3<bool>, 28>();
    let var_1 = var_0.c.a;
    var var_2 = Struct_2(global4.d.a, firstLeadingBit(global4.c.b), var_0.d.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(125f, -628f, global0.d.x), var_0.c.d)))) + global0.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(410f, -423f, global0.c.a))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.d.c.a, var_1.a))))), global4.a.x);
    return Struct_3(global4.a, 46230u, Struct_2(func_2(), vec3<i32>(-1i) * -vec3<i32>(var_2.e, global1.x, global1.x), func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.d.d))), 44548i), Struct_2(Struct_1(_wgslsmith_f_op_f32(-306f + _wgslsmith_div_f32(195f, -901f))), vec3<i32>(global4.a.x, -global0.b.x, global1.x), func_2(), var_0.d.d, var_2.b.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = Struct_3(-abs(global4.a), firstTrailingBit(4137u), arg_0.c, Struct_2(global0.a, global0.b, Struct_1(global0.d.x), vec3<f32>(arg_0.c.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<f32>(-685f, -400f, -682f))).x), 1f), max(_wgslsmith_dot_vec3_i32(firstLeadingBit(arg_0.a.zwx), global1.yyx), _wgslsmith_add_i32(arg_3.x, global1.x) << (0u % 32u))));
    var var_2 = firstTrailingBit(arg_0.b) << (~(_wgslsmith_add_u32(func_1().b, 31161u) | min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, var_1.b), vec3<u32>(global4.b, arg_0.b, global4.b)), min(global4.b, 0u))) % 32u);
    let var_3 = 1162f;
    global0 = arg_0.d;
    return global0.c;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec2<f32>) -> Struct_3 {
    let var_0 = !(global4.c.b.x >= 2147483647i);
    let var_1 = func_2();
    let var_2 = firstLeadingBit(i32(-1i) * -47798i) <= global0.b.x;
    global4 = Struct_3(~vec4<i32>(min(-53609i, -1i) | max(global4.a.x, 8380i), select(0i, 0i, all(vec3<bool>(var_2, var_0, arg_1.x))), global0.b.x, 11276i), func_1().b << (~1u % 32u), Struct_2(global0.c, countOneBits(global4.c.b), func_1().c.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-981f * arg_0.a), var_1.a, -1116f)), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global4.d.b.x, global0.e, global4.a.x, 2147483647i), vec4<i32>(-10447i, global0.e, -63528i, global4.d.b.x)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global4.b, 4294967295u, 9190u, global4.b), vec4<u32>(global4.b, u_input.a, global4.b, u_input.a)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(firstTrailingBit(global4.a), abs(vec4<i32>(34386i, global0.e, global1.x, -10245i))))), global4.d);
    let var_3 = -global4.a;
    return func_1();
}

fn func_6(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.c.a + _wgslsmith_f_op_f32(floor(arg_3.d.c.a))) - arg_3.c.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.c.a;
    var var_1 = vec2<i32>(1i, -648i);
    let var_2 = func_6(vec2<u32>(firstTrailingBit(global4.b), max(global4.b, 34259u)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, u_input.a), ~vec3<u32>(global4.b, u_input.a, 1u), vec3<u32>(4294967295u, u_input.a, u_input.a)), firstLeadingBit(vec3<u32>(global4.b, 1u, 4294967295u)) << (~vec3<u32>(u_input.a, 29762u, global4.b) % vec3<u32>(32u))), ~(~(~(~vec4<u32>(u_input.a, 1u, 1u, u_input.a)))), func_5(func_4(func_1(), func_2(), _wgslsmith_f_op_f32(-var_0.a), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, max(global4.b, global4.b)), 31u)]), vec2<bool>(true, all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(global0.d, vec3<f32>(-1000f, 814f, 309f), vec3<bool>(true, false, true))))))).zz));
    global1 = countOneBits(vec4<i32>(1i, ~var_1.x ^ 0i, firstLeadingBit(_wgslsmith_mult_i32(global0.e, var_1.x)), -18531i));
    global4 = Struct_3(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-global0.b, vec3<i32>(global1.x, global1.x, -6467i)), var_1.x), _wgslsmith_sub_i32(-func_5(global4.c.c, vec2<bool>(true, false), vec2<f32>(global4.c.d.x, global4.d.a.a)).a.x, func_1().a.x), -_wgslsmith_mult_i32(38141i, var_1.x), 1i >> (~min(global4.b, 25341u) % 32u)), u_input.a, global4.d, global4.d);
    var_1 = func_1().d.b.zz;
    let var_3 = global0.d.yy;
    var_1 = _wgslsmith_add_vec2_i32(func_5(func_5(var_2, vec2<bool>(true, false), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(global0.d.zz))))).c.a, !(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), func_5(Struct_1(1f), vec2<bool>(true, any(vec4<bool>(false, true, true, false))), vec2<f32>(global0.d.x, var_3.x)).d.d.yz).d.b.zz, global4.d.b.xx);
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i << (global4.b % 32u)));
}


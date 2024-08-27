struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(36983u, 1u, 1u, 4294967295u), 6325i, vec2<i32>(-1i, 2147483647i), -1699f);

var<private> global1: array<vec4<bool>, 32>;

var<private> global2: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(37023i, -28422i), vec2<i32>(64909i, 1i), vec2<i32>(51728i, -13528i), vec2<i32>(-12863i, 1i), vec2<i32>(-27390i, -7951i), vec2<i32>(51001i, 5276i), vec2<i32>(-6086i, -1i), vec2<i32>(-20251i, -1i), vec2<i32>(-1i, 445i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(25430i, 2147483647i), vec2<i32>(-8831i, 1i), vec2<i32>(i32(-2147483648), -14330i), vec2<i32>(2147483647i, 10540i), vec2<i32>(59916i, -1i), vec2<i32>(2147483647i, -15367i), vec2<i32>(-12533i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(-23887i, 22756i), vec2<i32>(0i, -1i), vec2<i32>(0i, 0i), vec2<i32>(22936i, 32318i), vec2<i32>(1i, -4704i), vec2<i32>(80652i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(30469i, 2147483647i), vec2<i32>(0i, 2147483647i), vec2<i32>(12541i, 13067i), vec2<i32>(0i, i32(-2147483648)));

var<private> global3: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(1u, 0u, 4294967295u, 23499u), vec4<u32>(1u, 14025u, 47876u, 54448u), vec4<u32>(4294967295u, 1u, 28596u, 0u), vec4<u32>(4294967295u, 1u, 0u, 7577u), vec4<u32>(1u, 58667u, 61899u, 0u), vec4<u32>(81390u, 4294967295u, 1u, 21825u), vec4<u32>(4294967295u, 124071u, 1u, 73525u), vec4<u32>(4294967295u, 102334u, 593u, 0u), vec4<u32>(4294967295u, 1u, 21148u, 3945u), vec4<u32>(16689u, 4294967295u, 1u, 1u), vec4<u32>(1u, 4294967295u, 13859u, 4294967295u), vec4<u32>(0u, 31660u, 20486u, 39976u), vec4<u32>(1u, 64787u, 10348u, 65354u));

var<private> global4: u32 = 20343u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(global0.a, _wgslsmith_div_i32(2147483647i, select(firstTrailingBit(~global0.c.x), global0.c.x ^ global0.c.x, false)), global0.c, 948f);
    global0 = Struct_1(_wgslsmith_div_vec4_u32(min(vec4<u32>(1u, var_0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 15498u, 89323u), vec3<u32>(54747u, 59504u, global0.a.x)), var_0.a.x), vec4<u32>(19638u, global0.a.x, var_0.a.x, _wgslsmith_dot_vec3_u32(var_0.a.yyw, global0.a.yzx))), ~abs(~vec4<u32>(var_0.a.x, var_0.a.x, 21469u, var_0.a.x))), firstTrailingBit(global0.b), min(vec2<i32>(-max(0i, global0.b), ~global0.c.x), countOneBits(u_input.b.xw)), var_0.d);
    var var_1 = Struct_1(_wgslsmith_mod_vec4_u32(global0.a, ~global0.a) << (~(~global0.a) % vec4<u32>(32u)), 1i, var_0.c, -925f);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.d, global0.d, 1469f))))), vec3<f32>(-1000f, 446f, var_1.d)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1705f, var_1.d, -612f))))));
    let var_3 = 0u;
    return ~16350u;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(~(~1u) ^ ((arg_0.a.x << (global0.a.x % 32u)) & firstTrailingBit(arg_0.a.x)), 32u)];
    var var_1 = Struct_1(_wgslsmith_add_vec4_u32(arg_0.a, vec4<u32>(~global0.a.x, global0.a.x, ~0u, ~1u) << ((vec4<u32>(arg_0.a.x, 10247u, 90566u, global0.a.x) ^ (vec4<u32>(1u, global0.a.x, global0.a.x, arg_0.a.x) << (vec4<u32>(global0.a.x, 4294967295u, 4294967295u, 30840u) % vec4<u32>(32u)))) % vec4<u32>(32u))), -1888i, vec2<i32>(global0.c.x, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.c.x & arg_0.c.x, global0.c.x), 2147483647i)), _wgslsmith_f_op_f32(-576f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.d - arg_0.d))))));
    global3 = array<vec4<u32>, 13>();
    let var_2 = arg_0;
    let var_3 = var_2;
    return _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(~u_input.b.yyw), vec3<i32>(_wgslsmith_sub_i32(global0.c.x, arg_0.b) ^ -30459i, -var_2.b, firstLeadingBit(-1i))), firstLeadingBit(1i));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    var var_1 = Struct_1(select(global3[_wgslsmith_index_u32(abs(~1u), 13u)], ~abs(arg_2.a), true) >> (arg_2.a % vec4<u32>(32u)), u_input.c.x, -_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(69547i, arg_1, arg_0.c.x, 2147483647i), u_input.b), -29154i << (1u % 32u)), var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -223f));
    let var_2 = Struct_1(~(~vec4<u32>(~47258u, 1u, ~4294967295u, _wgslsmith_add_u32(4294967295u, 0u))), arg_1, min(~(-(~vec2<i32>(arg_1, 0i))), -reverseBits(-arg_0.c)), -901f);
    let var_3 = abs(var_0.a.zy);
    global3 = array<vec4<u32>, 13>();
    return select(select(select(vec2<bool>(true, all(vec2<bool>(false, false))), vec2<bool>(true, true), all(select(vec2<bool>(true, true), vec2<bool>(false, true), false))), vec2<bool>(all(vec3<bool>(true, true, true)), all(vec2<bool>(true, false))), any(vec2<bool>(true, true))), !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), any(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(false, true, false), any(vec4<bool>(false, false, true, true))), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true))));
}

fn func_1() -> i32 {
    var var_0 = vec4<u32>(~(~_wgslsmith_dot_vec2_u32(global0.a.xw, vec2<u32>(58153u, global0.a.x))), global0.a.x, 38665u, ~_wgslsmith_add_u32(0u, global0.a.x));
    var var_1 = var_0.xyx;
    let var_2 = ~func_2();
    let var_3 = select(func_4(Struct_1(vec4<u32>(global0.a.x, var_2 & var_2, 1u, min(2948u, global0.a.x)), select(func_3(Struct_1(vec4<u32>(var_2, var_0.x, var_1.x, var_2), u_input.a.x, u_input.b.wz, global0.d)), global0.c.x, true), vec2<i32>(~(-5304i), firstLeadingBit(17263i)), global0.d), _wgslsmith_add_i32(u_input.a.x, ~func_3(Struct_1(vec4<u32>(var_1.x, var_0.x, 4294967295u, global0.a.x), 13313i, global0.c, global0.d))), Struct_1(abs(~global0.a), u_input.c.x, vec2<i32>(abs(-15750i), u_input.a.x), global0.d)), select(vec2<bool>(true, false), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), !func_4(Struct_1(vec4<u32>(61323u, global0.a.x, global0.a.x, var_2), global0.b, u_input.b.wy, global0.d), global0.b, Struct_1(vec4<u32>(0u, var_2, global0.a.x, global0.a.x), -2147483647i, vec2<i32>(-70096i, -1i), global0.d))), !vec2<bool>(global0.d < 2020f, 12776u == var_1.x)), (_wgslsmith_mod_i32(abs(19748i), select(0i, u_input.b.x, false)) << (~abs(8398u) % 32u)) >= _wgslsmith_dot_vec3_i32(-u_input.a, u_input.a));
    let var_4 = Struct_1(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(2021u, var_1.x, 6215u, var_0.x), _wgslsmith_div_vec4_u32(global3[_wgslsmith_index_u32(var_1.x, 13u)], vec4<u32>(24480u, var_0.x, 0u, 1u))), global0.a), min(~global0.a | global0.a, vec4<u32>(2969u, _wgslsmith_dot_vec2_u32(global0.a.yx, var_1.yx), ~var_0.x, var_0.x)), vec4<u32>(_wgslsmith_mod_u32(var_1.x, var_0.x >> (4294967295u % 32u)), var_0.x, ~0u, 46619u)), u_input.b.x, (u_input.c << (vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 15302u, 22789u), var_0.x & 44973u) % vec2<u32>(32u))) >> (vec2<u32>(min(global0.a.x & global0.a.x, ~var_1.x), ~var_1.x) % vec2<u32>(32u)), _wgslsmith_f_op_f32(global0.d - global0.d));
    return ~global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = ~_wgslsmith_mult_u32(~global0.a.x, ~global0.a.x);
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(0u, 13u)], func_1(), _wgslsmith_add_vec2_i32(vec2<i32>(~global0.c.x, _wgslsmith_mult_i32(global0.b, 0i)) >> (_wgslsmith_sub_vec2_u32(max(vec2<u32>(global0.a.x, 4294967295u), vec2<u32>(42423u, global0.a.x)), global0.a.xw << (global0.a.yw % vec2<u32>(32u))) % vec2<u32>(32u)), select(~global0.c, global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0.a.x, 0u), 29u)], true)), _wgslsmith_f_op_f32(trunc(global0.d)));
    global2 = array<vec2<i32>, 29>();
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-470f, 1000f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.d, global0.d), vec2<f32>(775f, global0.d), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-739f, var_0.d))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, -2191f) - vec2<f32>(var_1.d, global0.d))), all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false))))))));
    let var_3 = Struct_1(var_0.a, -1533i, vec2<i32>(select(var_0.b, 0i, all(vec3<bool>(false, true, false)) || false), var_0.b), var_2.x);
    var var_4 = 30825u;
    var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(621f)), _wgslsmith_f_op_f32(select(var_0.d, var_3.d, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, -526f) - vec2<f32>(global0.d, var_2.x)))))));
    var_1 = Struct_1(global0.a << (vec4<u32>(_wgslsmith_add_u32(~32140u, 10522u), ~var_0.a.x, ~(~35328u), _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 1u), global0.a.x, func_2())) % vec4<u32>(32u)), select(~countOneBits(var_1.b), _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec3_i32(u_input.b.yxw, abs(u_input.b.xxw))), !(_wgslsmith_f_op_f32(f32(-1f) * -1368f) <= var_1.d)), var_0.c, _wgslsmith_f_op_f32(sign(-994f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, global0.d, global0.d)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.d, 372f, -2549f), vec3<f32>(511f, global0.d, global0.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.d, 486f, -756f) + vec3<f32>(global0.d, var_2.x, -567f)))))))), _wgslsmith_add_u32(~abs(var_0.a.x), global0.a.x));
}


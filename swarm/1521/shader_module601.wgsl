struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(71093u, 58003u, 0u, 0u, 50325u, 4294967295u, 123983u, 0u, 0u, 6043u, 0u, 68471u, 1887u, 37658u, 18979u);

var<private> global1: array<vec2<f32>, 5>;

var<private> global2: Struct_1 = Struct_1(54419u, vec2<u32>(1u, 1u), vec4<bool>(true, false, false, true), vec2<bool>(false, false), vec4<i32>(-7096i, -6575i, 25447i, 73667i));

var<private> global3: u32;

var<private> global4: array<Struct_5, 18>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_4) -> f32 {
    var var_0 = _wgslsmith_div_f32(-327f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1807f)))));
    global0 = array<u32, 15>();
    global4 = array<Struct_5, 18>();
    let var_1 = Struct_1(0u, max(~global2.b, ~(~global2.b >> (_wgslsmith_add_vec2_u32(global2.b, global2.b) % vec2<u32>(32u)))), global2.c, select(!vec2<bool>(!arg_1.b.x, arg_1.b.x), !vec2<bool>(any(vec4<bool>(arg_1.b.x, arg_1.b.x, true, false)), global2.d.x | arg_1.b.x), global2.d.x), global2.e);
    global0 = array<u32, 15>();
    return 1074f;
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    global1 = array<vec2<f32>, 5>();
    global3 = _wgslsmith_mod_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a, 15u)], 15u)]);
    var var_0 = Struct_5(global2.a & select(35586u, ~9941u, all(!arg_0)), Struct_2(global2.b, _wgslsmith_f_op_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1171f), _wgslsmith_f_op_f32(-1000f - 1000f)), Struct_4(global2.e.yy, !global2.c.wx)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global2.a, 15u)]) << (~min(var_0.b.a.x, global0[_wgslsmith_index_u32(u_input.c, 15u)]) % 32u), 5u)] + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.b)) - -739f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.b * -518f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b, _wgslsmith_f_op_f32(922f * var_0.b.b), _wgslsmith_f_op_f32(f32(-1f) * -477f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -349f, 984f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1645f, var_1.x, var_1.x)))), vec3<f32>(-305f, -1831f, var_0.b.b))))));
    return ~(~(abs(global0[_wgslsmith_index_u32(~var_0.b.a.x, 15u)]) & ~(~0u)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1, arg_3: f32) -> vec3<bool> {
    let var_0 = countOneBits(firstTrailingBit(arg_2.e) << (vec4<u32>(func_2(arg_0.a.c.zzw), 60397u, global0[_wgslsmith_index_u32(arg_2.a, 15u)], 72535u) % vec4<u32>(32u))) << (firstTrailingBit(vec4<u32>(select(u_input.a, global2.a, !arg_0.e), max(42829u, ~arg_0.a.b.x), countOneBits(~0u), 1u)) % vec4<u32>(32u));
    let var_1 = select(!select(vec2<bool>(!arg_1.b.x, arg_2.d.x & arg_0.e), vec2<bool>(all(global2.c), arg_2.d.x), any(!global2.c.xw)), select(vec2<bool>(false, arg_2.c.x), select(select(arg_2.d, !vec2<bool>(true, arg_2.c.x), arg_1.b.x), arg_1.b, arg_0.a.c.x), select(vec2<bool>(arg_1.b.x, true), arg_0.a.c.xy, arg_0.a.d)), !all(!select(arg_2.c, arg_0.a.c, global2.c)));
    var var_2 = select(!(!vec4<bool>(arg_0.a.c.x, arg_2.d.x, false, global2.d.x)), select(vec4<bool>((var_1.x || arg_1.b.x) == !arg_2.d.x, true, var_1.x, true), !vec4<bool>(var_1.x, any(arg_2.c.wxw), arg_2.c.x, arg_0.e), global2.c.x), vec4<bool>(all(vec3<bool>(true, !global2.d.x, any(arg_2.c.zxx))), !any(!vec3<bool>(arg_0.a.d.x, false, false)), !select(false, arg_0.e | false, arg_2.d.x), var_1.x && arg_0.a.d.x));
    var var_3 = Struct_3(Struct_1(0u, vec2<u32>(33161u, arg_0.a.a), select(arg_0.a.c, vec4<bool>(select(true, arg_0.e, arg_1.b.x), true, var_1.x, arg_0.e), -1549f > _wgslsmith_f_op_f32(min(-1309f, arg_0.c.x))), select(select(vec2<bool>(true, true), arg_2.c.yw, vec2<bool>(false, false)), vec2<bool>(any(arg_2.d), all(vec2<bool>(arg_2.d.x, arg_1.b.x))), !all(arg_1.b)), global2.e), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-1947f)), _wgslsmith_f_op_f32(f32(-1f) * -938f), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-arg_0.d.xz), Struct_4(global2.e.wz, vec2<bool>(arg_2.d.x, arg_1.b.x)))), arg_3)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, 447f, arg_3) + vec3<f32>(arg_3, arg_3, 1018f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_0.d)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.d.x, -323f, -379f)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, -1231f, arg_0.d.x) - vec3<f32>(592f, arg_3, arg_0.c.x)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(arg_0.b.xxw, arg_0.c), arg_0.d, !vec3<bool>(arg_0.a.c.x, true, global2.c.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_3, arg_3) - arg_0.d) + arg_0.c), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, -191f, arg_3)))))), var_2.x);
    global2 = Struct_1(45487u, ~vec2<u32>(~(~0u), firstLeadingBit(41559u)), !arg_0.a.c, select(vec2<bool>(false, true), select(select(select(vec2<bool>(false, true), vec2<bool>(arg_0.a.d.x, false), vec2<bool>(false, var_1.x)), global2.c.xz, arg_1.b.x && arg_0.e), vec2<bool>(!arg_1.b.x, true), select(var_1, select(global2.d, arg_2.c.wx, vec2<bool>(false, arg_0.e)), var_2.x)), false), ~var_3.a.e);
    return vec3<bool>(true, var_3.c.x <= 1000f, any(select(vec4<bool>(arg_0.a.d.x, var_1.x != true, global2.d.x, select(true, var_1.x, var_2.x)), !vec4<bool>(global2.c.x, true, true, var_2.x), select(arg_0.a.c, vec4<bool>(true, arg_2.d.x, true, var_3.a.c.x), true))));
}

fn func_4(arg_0: vec2<u32>, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    global0 = array<u32, 15>();
    var var_0 = 29040u;
    let var_1 = !arg_2;
    return _wgslsmith_mult_i32(u_input.d, 2147483647i >> (_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(global2.a, 15u)], 0u, 36230u, 1u) << (vec4<u32>(0u, 4294967295u, 90904u, u_input.b) % vec4<u32>(32u))), min(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.e, 15u)], global0[_wgslsmith_index_u32(21981u, 15u)], global2.a) & vec4<u32>(34850u, 4294967295u, global2.a, global2.b.x), vec4<u32>(1u, 3088u, global0[_wgslsmith_index_u32(8065u, 15u)], 1u))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(62045u ^ _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.b.x, 15u)], 15u)], 37124u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.e) >> (vec3<u32>(u_input.e, global0[_wgslsmith_index_u32(u_input.b, 15u)], 33491u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(global2.b.x, 10683u, 4294967295u), ~vec3<u32>(global0[_wgslsmith_index_u32(70885u, 15u)], global0[_wgslsmith_index_u32(global2.a, 15u)], 27461u))), 15u)]) ^ ~global2.b;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1013f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -533f), -154f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -658f))))));
    var var_2 = abs(~func_4(vec2<u32>(u_input.e, global2.a), any(vec4<bool>(true, true, global2.c.x, false)), func_1(Struct_3(Struct_1(var_0.x, global2.b, global2.c, global2.d, vec4<i32>(u_input.d, 26243i, u_input.d, 25725i)), vec4<f32>(-1581f, 262f, -293f, 704f), vec3<f32>(2032f, 345f, 528f), vec3<f32>(571f, 148f, -737f), global2.d.x), Struct_4(global2.e.ww, global2.d), Struct_1(global0[_wgslsmith_index_u32(19771u, 15u)], vec2<u32>(u_input.b, global2.a), global2.c, global2.d, vec4<i32>(global2.e.x, u_input.d, u_input.d, u_input.d)), -950f))) ^ -1i;
    global4 = array<Struct_5, 18>();
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 418f, -310f, 568f), vec4<f32>(-1000f, 729f, -515f, -1967f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2044f, 769f, 879f, -1304f) + vec4<f32>(441f, 184f, -1147f, 480f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-468f, -575f) * _wgslsmith_f_op_f32(-282f + -124f)), 200f, _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(1u, 5u)], Struct_4(vec2<i32>(45306i, 60613i), vec2<bool>(true, global2.c.x)))), -1516f), true)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(111f)), -2547f, _wgslsmith_f_op_f32(floor(-1209f)), -1196f)))));
    let var_4 = Struct_2(global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, 943f), global1[_wgslsmith_index_u32(u_input.b, 5u)], global2.c.zx)), Struct_4(vec2<i32>(2147483647i, global2.e.x), vec2<bool>(true, false)))) + _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(ceil(1754f))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<i32>(firstLeadingBit(global2.e.x), _wgslsmith_sub_i32(_wgslsmith_div_i32(-2147483647i, u_input.d), -1i), -39887i, _wgslsmith_dot_vec2_i32(global2.e.wz, vec2<i32>(global2.e.x, global2.e.x)))), ~var_4.a, -22823i, _wgslsmith_f_op_f32(sign(-717f)), vec4<u32>(min(~var_4.a.x, firstLeadingBit(59960u)) << (_wgslsmith_sub_u32(global2.a >> (var_0.x % 32u), 61415u) % 32u), 1u, _wgslsmith_add_u32(_wgslsmith_div_u32(~24483u, 65666u), 100044u), u_input.e));
}


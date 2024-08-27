struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<u32>(1u, 1u, 0u), vec4<f32>(-822f, -129f, 1988f, -1937f), vec3<u32>(1u, 7466u, 4294967295u), vec3<bool>(false, false, false), Struct_3(Struct_1(vec3<bool>(true, false, false), vec2<u32>(0u, 1u), vec2<i32>(26416i, 1i), vec2<u32>(0u, 59692u), 80933u), vec4<i32>(-36637i, -26258i, -2544i, i32(-2147483648)), Struct_1(vec3<bool>(true, true, true), vec2<u32>(0u, 4294967295u), vec2<i32>(1i, 1i), vec2<u32>(37533u, 19560u), 4294967295u), 24121i));

var<private> global1: vec3<f32> = vec3<f32>(-538f, 862f, -1000f);

var<private> global2: array<f32, 19>;

var<private> global3: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-152f, -1681f), vec2<f32>(444f, -100f), vec2<f32>(-213f, 310f), vec2<f32>(201f, -1092f), vec2<f32>(541f, -588f), vec2<f32>(-355f, 245f), vec2<f32>(1365f, -768f), vec2<f32>(1055f, 820f), vec2<f32>(-377f, 233f), vec2<f32>(609f, -690f), vec2<f32>(495f, 791f), vec2<f32>(-466f, 2637f), vec2<f32>(267f, -352f), vec2<f32>(1848f, -677f), vec2<f32>(-359f, -456f), vec2<f32>(405f, -759f), vec2<f32>(391f, 353f), vec2<f32>(-1190f, 352f), vec2<f32>(730f, -966f), vec2<f32>(-159f, 1120f), vec2<f32>(1620f, 1500f), vec2<f32>(129f, 1673f));

var<private> global4: array<Struct_2, 29>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> vec2<i32> {
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.wyw));
    let var_0 = global0.e.b;
    var var_1 = firstLeadingBit(u_input.c.x);
    global1 = arg_1;
    global2 = array<f32, 19>();
    return select(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.a.c.x, ~1i) & vec2<i32>(-11915i, -1i), vec2<i32>(_wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(1i, 2147483647i, -44003i)), -42584i >> (u_input.b % 32u))), global0.e.b.zz, arg_0.a.a.zx);
}

fn func_2() -> f32 {
    var var_0 = Struct_1(!select(global0.e.c.a, !(!global0.e.c.a), all(select(global0.d.xx, vec2<bool>(global0.e.c.a.x, false), global0.e.c.a.yz))), vec2<u32>(_wgslsmith_div_u32(28842u, 4294967295u), 1u), firstLeadingBit((vec2<i32>(global0.e.c.c.x, global0.e.a.c.x) >> (~vec2<u32>(0u, global0.e.c.e) % vec2<u32>(32u))) | func_3(Struct_3(Struct_1(vec3<bool>(true, global0.d.x, global0.e.c.a.x), vec2<u32>(4294967295u, u_input.b), vec2<i32>(global0.e.b.x, 1i), vec2<u32>(global0.e.c.e, u_input.d.x), u_input.d.x), vec4<i32>(63383i, u_input.c.x, -25950i, 12197i), Struct_1(global0.d, global0.c.zz, vec2<i32>(-1i, u_input.a), u_input.d.yz, 1u), -1946i), global0.b.zyw)), ~(~global0.e.a.b >> (~vec2<u32>(global0.a.x, 1u) % vec2<u32>(32u))), 0u);
    var_0 = global0.e.c;
    let var_1 = global0.e;
    global4 = array<Struct_2, 29>();
    let var_2 = ((_wgslsmith_mult_i32(~2191i, ~global0.e.a.c.x) > ~abs(12879i)) && false) & var_1.c.a.x;
    return 1506f;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(237f * _wgslsmith_f_op_f32(func_2()));
    var var_1 = Struct_1(!select(select(global0.d, select(global0.d, vec3<bool>(true, false, global0.e.a.a.x), global0.e.a.a), arg_1), !select(vec3<bool>(arg_1, false, false), global0.d, false), all(vec2<bool>(global0.d.x, true))), u_input.d.zw, _wgslsmith_mod_vec2_i32(min(u_input.c.zy, vec2<i32>(~27781i, 2147483647i)), u_input.c.zy), ~vec2<u32>(global0.e.a.b.x, _wgslsmith_div_u32(countOneBits(global0.a.x), global0.a.x)), 99926u);
    let var_2 = ~(-(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c.x, global0.e.a.c.x), vec2<i32>(-2147483647i, global0.e.d))) & ~vec2<i32>(15314i, global0.e.a.c.x)));
    let var_3 = Struct_2(-_wgslsmith_mod_i32(1i, arg_0));
    var var_4 = Struct_3(global0.e.a, _wgslsmith_clamp_vec4_i32(min(vec4<i32>(0i, var_2.x, 26467i, arg_0) ^ select(vec4<i32>(u_input.a, 26719i, -344i, -33582i), vec4<i32>(var_3.a, global0.e.c.c.x, -8160i, 33039i), false), -_wgslsmith_sub_vec4_i32(global0.e.b, global0.e.b)), -vec4<i32>(var_1.c.x, func_3(Struct_3(global0.e.c, global0.e.b, global0.e.a, -2147483647i), global0.b.wwz).x, ~var_1.c.x, 2147483647i | var_1.c.x), vec4<i32>(max(19027i, -34551i), -1i, global0.e.c.c.x, _wgslsmith_clamp_i32(_wgslsmith_add_i32(12028i, 30357i), _wgslsmith_sub_i32(global0.e.b.x, 1i), ~1i))), global0.e.a, global0.e.c.c.x);
    return abs(_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.d) ^ abs(u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(40268u, var_4.c.b.x, global0.e.a.d.x, var_4.c.e) ^ vec4<u32>(14901u, 36148u, u_input.b, var_1.b.x), abs(u_input.d)))) != reverseBits(global0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(~((global0.a << ((vec3<u32>(u_input.b, 4294967295u, u_input.b) | vec3<u32>(u_input.d.x, global0.a.x, u_input.d.x)) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), ~u_input.d.x, global0.c.x) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1098f * 1038f)), _wgslsmith_f_op_f32(426f + 1403f), -1000f, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(1434f - global2[_wgslsmith_index_u32(1549u, 19u)]))))), ~(~vec3<u32>(0u, 4294967295u, ~global0.a.x)), select(vec3<bool>(func_1(-2147483647i, any(vec4<bool>(global0.d.x, false, false, true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global2[_wgslsmith_index_u32(global0.a.x, 19u)]))), any(select(global0.d.xy, global0.d.xx, vec2<bool>(false, true))), !global0.e.a.a.x), global0.e.c.a, global0.e.c.a.x), global0.e);
    var var_0 = ~firstLeadingBit(firstLeadingBit(4020u));
    var var_1 = ~select(countOneBits(vec3<i32>(~u_input.c.x, -36385i, -2147483647i)), -_wgslsmith_div_vec3_i32(global0.e.b.zww ^ global0.e.b.yyz, ~vec3<i32>(global0.e.c.c.x, 0i, 2147483647i)), select(true, true, global0.e.c.a.x));
    var var_2 = select(~(~(~u_input.d.xw)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.c.x, u_input.d.x), vec2<u32>(1u, min(0u, 0u))), global0.e.c.a.x) ^ vec2<u32>(1u, u_input.b);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-655f))), _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-global1.x)), any(global0.e.a.a))), _wgslsmith_f_op_f32(f32(-1f) * -1221f)));
    var_1 = ~reverseBits(vec3<i32>(-var_1.x, global0.e.a.c.x, ~min(u_input.a, 16081i)));
    var var_4 = Struct_2(u_input.c.x);
    let var_5 = global0.d;
    let var_6 = !select(false, false, false);
    let x = u_input.a;
    s_output = StorageBuffer(22144u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1225f), _wgslsmith_f_op_f32(588f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-314f, -1104f) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_2.x, 19u)]))), false)), vec4<u32>(1u, _wgslsmith_div_u32(global0.a.x, ~41806u), var_2.x & _wgslsmith_clamp_u32(4294967295u, abs(40036u), ~var_2.x), 1u));
}


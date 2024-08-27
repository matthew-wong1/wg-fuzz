struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
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

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec2<u32>(25755u, 64569u), vec4<u32>(13177u, 1u, 4294967295u, 1u), Struct_1(vec2<i32>(25010i, -5651i), vec2<i32>(-20664i, -1i), true, false, i32(-2147483648))), Struct_2(vec2<u32>(4294967295u, 4294967295u), vec4<u32>(77636u, 22108u, 4294967295u, 0u), Struct_1(vec2<i32>(30059i, -46261i), vec2<i32>(-16385i, 1i), false, false, 2147483647i)), Struct_2(vec2<u32>(0u, 1u), vec4<u32>(1u, 49989u, 1u, 21708u), Struct_1(vec2<i32>(-17045i, -35185i), vec2<i32>(-51943i, 1i), true, false, 2147483647i)), Struct_2(vec2<u32>(72373u, 40408u), vec4<u32>(11902u, 17270u, 4294967295u, 1u), Struct_1(vec2<i32>(6512i, 1i), vec2<i32>(-1i, 0i), false, true, 25635i)), Struct_2(vec2<u32>(0u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 4330u), Struct_1(vec2<i32>(38374i, -1i), vec2<i32>(-819i, 57220i), false, false, 0i)), Struct_2(vec2<u32>(23888u, 3865u), vec4<u32>(1u, 1u, 29352u, 0u), Struct_1(vec2<i32>(1i, -51794i), vec2<i32>(609i, -27145i), false, true, 7693i)), Struct_2(vec2<u32>(1u, 1u), vec4<u32>(55125u, 15588u, 1u, 6982u), Struct_1(vec2<i32>(30837i, -11525i), vec2<i32>(9442i, 8639i), true, false, -91222i)), Struct_2(vec2<u32>(21592u, 24116u), vec4<u32>(4294967295u, 128621u, 4294967295u, 0u), Struct_1(vec2<i32>(2123i, -30766i), vec2<i32>(15453i, 8595i), true, true, -45265i)), Struct_2(vec2<u32>(24355u, 0u), vec4<u32>(4294967295u, 11239u, 4294967295u, 33926u), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), true, true, -1i)), Struct_2(vec2<u32>(4294967295u, 14733u), vec4<u32>(34355u, 4294967295u, 34803u, 1u), Struct_1(vec2<i32>(41547i, 54758i), vec2<i32>(6594i, 1010i), true, true, 25992i)), Struct_2(vec2<u32>(1u, 114782u), vec4<u32>(52661u, 26538u, 0u, 0u), Struct_1(vec2<i32>(4321i, 1i), vec2<i32>(i32(-2147483648), 1i), false, false, i32(-2147483648))), Struct_2(vec2<u32>(37037u, 83589u), vec4<u32>(44121u, 0u, 4294967295u, 1u), Struct_1(vec2<i32>(0i, -1i), vec2<i32>(-8029i, -31034i), false, true, 34029i)), Struct_2(vec2<u32>(2562u, 2531u), vec4<u32>(8729u, 103891u, 22529u, 0u), Struct_1(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(i32(-2147483648), 1501i), true, false, i32(-2147483648))), Struct_2(vec2<u32>(4294967295u, 0u), vec4<u32>(0u, 1u, 19631u, 5890u), Struct_1(vec2<i32>(-22074i, 15062i), vec2<i32>(-1i, 17833i), false, false, -1i)), Struct_2(vec2<u32>(39780u, 0u), vec4<u32>(44235u, 1u, 18328u, 75845u), Struct_1(vec2<i32>(0i, 74717i), vec2<i32>(0i, -21168i), false, true, 1940i)));

var<private> global1: i32 = -1i;

var<private> global2: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false));

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 22273u, 17298u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    let var_0 = select(vec2<bool>(true, ~reverseBits(arg_3.b.x) != u_input.b), !select(select(vec2<bool>(false, true), vec2<bool>(arg_2.c.c, true), arg_3.c.d), !select(vec2<bool>(arg_1.c.d, true), vec2<bool>(arg_3.c.c, arg_1.c.c), vec2<bool>(true, arg_1.c.c)), global3.x <= ~arg_0.x), all(vec4<bool>(u_input.b != ~arg_1.b.x, arg_3.c.d, any(select(vec4<bool>(false, true, arg_1.c.d, arg_2.c.c), vec4<bool>(arg_2.c.d, true, arg_3.c.c, true), vec4<bool>(arg_1.c.c, false, true, false))), _wgslsmith_sub_u32(arg_1.b.x, arg_2.b.x) != 78472u)));
    global0 = array<Struct_2, 15>();
    global3 = vec3<u32>(14317u, arg_2.b.x, global3.x);
    let var_1 = vec3<u32>(~arg_3.b.x, 4294967295u, reverseBits(_wgslsmith_dot_vec3_u32(~reverseBits(arg_3.b.yzx), ~(arg_3.b.yyz | arg_3.b.yxz))));
    global0 = array<Struct_2, 15>();
    return 763f;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> Struct_2 {
    global0 = array<Struct_2, 15>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2170f, _wgslsmith_f_op_f32(func_3(global3.yz, global0[_wgslsmith_index_u32(u_input.b, 15u)], Struct_2(global3.xx, vec4<u32>(global3.x, global3.x, global3.x, 0u), Struct_1(arg_1, arg_1, arg_0, arg_0, 68521i)), global0[_wgslsmith_index_u32(u_input.b, 15u)]))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-458f))))))) * _wgslsmith_f_op_f32(1813f * _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1653f)), _wgslsmith_f_op_f32(step(2537f, -1000f)))))));
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(arg_1, ~(vec2<i32>(-1i) * -vec2<i32>(arg_1.x, -18668i))), arg_1, !arg_0, all(select(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(global3.x, global3.x), 3u)], global2[_wgslsmith_index_u32(global3.x, 3u)], !(!global2[_wgslsmith_index_u32(global3.x, 3u)]))), ~_wgslsmith_add_i32(-_wgslsmith_sub_i32(arg_1.x, arg_1.x), ~arg_1.x));
    var var_2 = false;
    let var_3 = firstLeadingBit(_wgslsmith_add_u32(~global3.x >> (global3.x % 32u), abs(~1u))) << (54922u % 32u);
    return Struct_2(vec2<u32>(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_add_u32(34046u, 390u), global3.x)), _wgslsmith_clamp_u32(~0u, 1u, ~21028u) << (u_input.a.x % 32u)), vec4<u32>(1u, 1u, 4294967295u, countOneBits(countOneBits(global3.x))), var_1);
}

fn func_1(arg_0: bool) -> f32 {
    global0 = array<Struct_2, 15>();
    let var_0 = global0[_wgslsmith_index_u32(global3.x, 15u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(391f, 162f, -493f, 2918f) + vec4<f32>(762f, -260f, -436f, -1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-172f, 152f, -2245f, 962f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 137f, 1062f, 1019f))))));
    var var_2 = func_2(true, abs(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.c.b.x, var_0.c.e), vec2<i32>(6535i, var_0.c.e)) ^ var_0.c.a));
    let var_3 = func_2(!any(!(!vec2<bool>(var_0.c.c, true))), var_2.c.b);
    return var_1.x;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec2<bool>) -> vec4<u32> {
    let var_0 = select(global2[_wgslsmith_index_u32(137919u, 3u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~1u), _wgslsmith_div_u32(~_wgslsmith_sub_u32(u_input.a.x, 42011u), 1u)), 3u)], any(arg_2));
    var var_1 = select(~(_wgslsmith_sub_vec3_i32(-vec3<i32>(1i, 1i, -27489i), select(vec3<i32>(11989i, arg_1, 31464i), vec3<i32>(arg_1, arg_1, arg_1), false)) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 4294967295u, global3.x, u_input.a.x), vec4<u32>(18066u, 1u, global3.x, global3.x)), u_input.b, 81281u) % vec3<u32>(32u))), vec3<i32>(1i, 1i, arg_1), select(var_0.xww, !select(!var_0.xyx, select(var_0.wwx, var_0.ywx, var_0.wxx), arg_2.x && true), false));
    var var_2 = ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(36577u, global3.x, global3.x, global3.x), vec4<u32>(u_input.a.x, global3.x, global3.x, global3.x))), u_input.b), u_input.a.x ^ ~(~0u), 43100u, countOneBits(22075u));
    var var_3 = ~select(var_2.xz >> (_wgslsmith_clamp_vec2_u32(~global3.zy, var_2.yx, global3.xx | vec2<u32>(5601u, 2804u)) % vec2<u32>(32u)), ~u_input.a, arg_0);
    var_1 = ~(~((select(vec3<i32>(-1i, 38194i, 0i), vec3<i32>(-1i, arg_1, arg_1), var_0.x) | reverseBits(vec3<i32>(var_1.x, 7519i, -1i))) >> ((vec3<u32>(21682u, var_2.x, global3.x) ^ max(var_2.ywx, var_2.xzz)) % vec3<u32>(32u))));
    return _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~min(func_2(var_0.x, var_1.xz).b, ~vec4<u32>(48423u, 0u, 1u, var_2.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_3.x, 10952u, 54596u, u_input.a.x), vec4<u32>(var_3.x, 37474u, global3.x, global3.x), vec4<u32>(u_input.b, u_input.b, 39390u, global3.x)) | ~vec4<u32>(1u, 4294967295u, 1u, u_input.a.x)), vec4<u32>(select(1u, 130762u, var_0.x) << (_wgslsmith_sub_u32(18923u, var_2.x) % 32u), var_2.x, u_input.a.x, abs(abs(u_input.b))) >> (vec4<u32>(~4294967295u, 0u, _wgslsmith_sub_u32(var_2.x, firstLeadingBit(25230u)), abs(_wgslsmith_dot_vec3_u32(var_2.xwy, vec3<u32>(1u, 1u, 0u)))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = func_4(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true)) + -1296f) > _wgslsmith_f_op_f32(-1f)), 1i, vec2<bool>(select(true, func_2(all(vec3<bool>(true, true, true)), vec2<i32>(1i, -2147483647i)).c.d, !(global3.x <= 7992u)), true));
    var var_2 = firstLeadingBit((vec4<i32>(-1i) * -firstTrailingBit(vec4<i32>(1i, -1i, 1i, 15265i))) >> ((~vec4<u32>(41791u, 1u, 53605u, u_input.b) | _wgslsmith_add_vec4_u32(var_1, var_1)) % vec4<u32>(32u)));
    global3 = var_1.zwz;
    global1 = max(_wgslsmith_sub_i32(-(min(var_2.x, 21036i) & select(var_2.x, -1i, true)), firstLeadingBit(func_2(true, firstLeadingBit(var_2.yw)).c.b.x)), var_2.x ^ countOneBits(var_2.x | 0i));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}


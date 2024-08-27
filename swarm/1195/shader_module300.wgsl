struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec4<bool>(true, false, false, true), Struct_1(false, vec2<u32>(1u, 52770u)), Struct_1(false, vec2<u32>(4294967295u, 93696u))), Struct_2(vec4<bool>(false, true, true, true), Struct_1(true, vec2<u32>(28908u, 0u)), Struct_1(true, vec2<u32>(29830u, 0u))), Struct_2(vec4<bool>(true, true, true, false), Struct_1(false, vec2<u32>(1u, 4294967295u)), Struct_1(true, vec2<u32>(11690u, 4294967295u))), Struct_2(vec4<bool>(false, true, false, false), Struct_1(false, vec2<u32>(0u, 17914u)), Struct_1(false, vec2<u32>(0u, 53310u))), Struct_2(vec4<bool>(true, false, true, false), Struct_1(true, vec2<u32>(1u, 0u)), Struct_1(true, vec2<u32>(40723u, 0u))), Struct_2(vec4<bool>(true, true, true, false), Struct_1(false, vec2<u32>(0u, 14254u)), Struct_1(false, vec2<u32>(41963u, 0u))), Struct_2(vec4<bool>(false, true, true, false), Struct_1(true, vec2<u32>(2187u, 1u)), Struct_1(true, vec2<u32>(22735u, 1279u))), Struct_2(vec4<bool>(true, false, false, true), Struct_1(false, vec2<u32>(1u, 31393u)), Struct_1(true, vec2<u32>(1u, 47228u))), Struct_2(vec4<bool>(false, true, false, false), Struct_1(true, vec2<u32>(100562u, 0u)), Struct_1(true, vec2<u32>(27196u, 26487u))), Struct_2(vec4<bool>(false, true, true, false), Struct_1(false, vec2<u32>(77556u, 41830u)), Struct_1(true, vec2<u32>(34205u, 4294967295u))), Struct_2(vec4<bool>(true, false, true, true), Struct_1(true, vec2<u32>(4294967295u, 0u)), Struct_1(false, vec2<u32>(23961u, 55126u))), Struct_2(vec4<bool>(false, true, false, true), Struct_1(false, vec2<u32>(68178u, 11894u)), Struct_1(true, vec2<u32>(26836u, 45966u))), Struct_2(vec4<bool>(true, true, true, false), Struct_1(true, vec2<u32>(134189u, 3214u)), Struct_1(true, vec2<u32>(0u, 47876u))), Struct_2(vec4<bool>(true, true, false, false), Struct_1(false, vec2<u32>(0u, 16716u)), Struct_1(false, vec2<u32>(1u, 1u))), Struct_2(vec4<bool>(true, false, true, true), Struct_1(false, vec2<u32>(0u, 0u)), Struct_1(true, vec2<u32>(1u, 4294967295u))), Struct_2(vec4<bool>(true, true, true, true), Struct_1(true, vec2<u32>(1u, 1u)), Struct_1(true, vec2<u32>(4294967295u, 6789u))), Struct_2(vec4<bool>(false, false, true, true), Struct_1(true, vec2<u32>(4294967295u, 1u)), Struct_1(false, vec2<u32>(1u, 92085u))), Struct_2(vec4<bool>(false, false, true, false), Struct_1(false, vec2<u32>(41880u, 1u)), Struct_1(false, vec2<u32>(1u, 3570u))), Struct_2(vec4<bool>(false, false, false, true), Struct_1(true, vec2<u32>(39045u, 1u)), Struct_1(false, vec2<u32>(82317u, 15521u))), Struct_2(vec4<bool>(false, true, true, false), Struct_1(true, vec2<u32>(2241u, 4294967295u)), Struct_1(false, vec2<u32>(79181u, 16043u))), Struct_2(vec4<bool>(true, true, false, false), Struct_1(true, vec2<u32>(51899u, 0u)), Struct_1(false, vec2<u32>(94479u, 7484u))), Struct_2(vec4<bool>(true, true, false, false), Struct_1(false, vec2<u32>(0u, 49051u)), Struct_1(true, vec2<u32>(18312u, 1u))), Struct_2(vec4<bool>(false, true, false, true), Struct_1(false, vec2<u32>(46712u, 126910u)), Struct_1(false, vec2<u32>(1u, 1u))), Struct_2(vec4<bool>(false, false, false, true), Struct_1(true, vec2<u32>(72264u, 4294967295u)), Struct_1(false, vec2<u32>(18058u, 0u))), Struct_2(vec4<bool>(false, false, false, false), Struct_1(true, vec2<u32>(0u, 4294967295u)), Struct_1(false, vec2<u32>(4294967295u, 19141u))));

var<private> global2: Struct_3;

var<private> global3: array<i32, 28> = array<i32, 28>(13609i, 1i, -1i, 19847i, -25179i, 0i, 28747i, 28624i, 0i, 2147483647i, 12513i, 1i, 80499i, -1i, i32(-2147483648), -35027i, -46291i, 2147483647i, 1i, 0i, 1i, 2147483647i, 1i, -35742i, i32(-2147483648), -24204i, i32(-2147483648), 2147483647i);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    var var_0 = arg_1.b;
    var var_1 = -14998i;
    global1 = array<Struct_2, 25>();
    var_1 = 0i;
    let var_2 = -2036f;
    return true;
}

fn func_1() -> bool {
    var var_0 = any(!(!global2.e.a));
    let var_1 = !(u_input.a >= _wgslsmith_dot_vec4_u32(max(global2.c, global2.c), ~global2.c));
    global2 = Struct_3(global2.a, Struct_2(select(vec4<bool>(global2.e.c.a, u_input.a < u_input.a, any(vec3<bool>(var_1, global2.b.a.x, true)), global2.d), !(!global2.e.a), func_2(Struct_3(global2.e.c, global1[_wgslsmith_index_u32(u_input.a, 25u)], vec4<u32>(u_input.a, global2.b.b.b.x, u_input.a, 462u), false, global1[_wgslsmith_index_u32(global2.a.b.x, 25u)]), Struct_2(vec4<bool>(var_1, var_1, global2.e.b.a, false), Struct_1(global2.e.b.a, vec2<u32>(u_input.a, u_input.a)), Struct_1(var_1, global2.a.b)))), Struct_1(false, ~firstLeadingBit(global2.b.c.b)), Struct_1(func_2(Struct_3(global2.b.b, global2.e, vec4<u32>(16174u, 1u, global2.e.c.b.x, 0u), false, Struct_2(global2.b.a, global2.a, Struct_1(var_1, global2.b.b.b))), Struct_2(vec4<bool>(global2.d, false, var_1, true), Struct_1(var_1, vec2<u32>(u_input.a, u_input.a)), global2.e.b)), abs(select(vec2<u32>(21402u, 1u), vec2<u32>(u_input.a, 4294967295u), global2.b.a.wz)))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global2.c.yzx, global2.c.wyw), vec3<u32>(25457u, 4294967295u, u_input.a)), countOneBits(u_input.a), ~_wgslsmith_div_u32(abs(u_input.a), 9671u), 4294967295u), global2.e.b.a, global2.b);
    let var_2 = u_input.a;
    var var_3 = all(vec3<bool>(var_1 || all(select(vec3<bool>(true, var_1, false), global2.b.a.xzy, global2.e.a.yww)), global2.e.c.a & any(vec3<bool>(true, false, global2.a.a)), true));
    return false;
}

fn func_3(arg_0: bool, arg_1: f32) -> Struct_2 {
    global2 = Struct_3(Struct_1(any(vec2<bool>(true, true)) && !any(global2.e.a), min(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 38168u), global2.a.b), u_input.a), _wgslsmith_div_vec2_u32(abs(global2.a.b), global2.e.c.b << (global2.c.xz % vec2<u32>(32u))))), global1[_wgslsmith_index_u32(0u, 25u)], global2.c, !global2.a.a, global2.e);
    global1 = array<Struct_2, 25>();
    global0 = countOneBits(~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, global3[_wgslsmith_index_u32(0u, 28u)]), vec2<i32>(global0.x, -2147483647i)), vec2<i32>(global0.x, global0.x) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), select(firstTrailingBit(vec2<i32>(-24368i, global3[_wgslsmith_index_u32(0u, 28u)])), vec2<i32>(14427i, global3[_wgslsmith_index_u32(global2.e.b.b.x, 28u)]), global2.d)));
    var var_0 = Struct_3(Struct_1(true, vec2<u32>(~4294967295u, 29463u)), Struct_2(!vec4<bool>(-666f == arg_1, global2.a.a | false, arg_0, arg_0), Struct_1(!func_1(), min(~global2.a.b, vec2<u32>(0u, 1u))), global2.e.b), global2.c ^ global2.c, false, Struct_2(!(!select(global2.b.a, global2.b.a, global2.b.c.a)), global2.b.c, Struct_1(true, vec2<u32>(global2.a.b.x ^ 4294967295u, ~global2.b.c.b.x))));
    let var_1 = Struct_2(select(select(vec4<bool>(!var_0.a.a, true, true, -2147483647i < global3[_wgslsmith_index_u32(var_0.a.b.x, 28u)]), select(vec4<bool>(true, true, true, true), !var_0.b.a, select(vec4<bool>(var_0.b.b.a, false, global2.a.a, var_0.e.a.x), global2.b.a, var_0.b.c.a)), vec4<bool>(var_0.b.b.a, func_1(), false, !var_0.b.c.a)), vec4<bool>(!(!arg_0), arg_0, true, false), !arg_0), Struct_1(!(any(global2.b.a.zxy) || var_0.b.a.x), var_0.e.b.b), Struct_1(-firstTrailingBit(global3[_wgslsmith_index_u32(43812u, 28u)]) >= max(_wgslsmith_mult_i32(1i, global0.x), select(2147483647i, -2147483647i, true)), _wgslsmith_mult_vec2_u32(global2.e.c.b, max(vec2<u32>(0u, 9897u), var_0.e.b.b))));
    return Struct_2(vec4<bool>(select(abs(var_0.e.c.b.x) != var_0.e.c.b.x, all(vec2<bool>(true, true)), true), all(global2.e.a.wz), select(true, true, -1000f <= _wgslsmith_f_op_f32(floor(arg_1))), var_0.d), global2.a, Struct_1(global2.a.a, select(firstTrailingBit(vec2<u32>(19952u, 48862u)) & global2.c.yy, min(firstTrailingBit(var_1.c.b), ~vec2<u32>(u_input.a, 0u)), true)));
}

fn func_4(arg_0: Struct_2) -> vec2<i32> {
    global3 = array<i32, 28>();
    let var_0 = _wgslsmith_sub_vec4_u32(global2.c, ~(~vec4<u32>(75337u, u_input.a, arg_0.c.b.x, 4294967295u))) << (global2.c % vec4<u32>(32u));
    let var_1 = vec2<bool>(func_3(global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1634f))))).b.a, arg_0.c.a);
    var var_2 = ~(~_wgslsmith_mult_i32(13099i, global3[_wgslsmith_index_u32(u_input.a, 28u)]));
    var_2 = abs(reverseBits(-global0.x));
    return _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32((vec2<i32>(2147483647i, global0.x) ^ vec2<i32>(-2147483647i, global3[_wgslsmith_index_u32(arg_0.c.b.x, 28u)])) >> (min(arg_0.c.b, ~vec2<u32>(24396u, var_0.x)) % vec2<u32>(32u)), firstLeadingBit(select(vec2<i32>(global3[_wgslsmith_index_u32(var_0.x, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<i32>(-34104i, global0.x), vec2<bool>(true, arg_0.b.a))) << (_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(54309u, arg_0.b.b.x), arg_0.c.b), firstTrailingBit(var_0.yx)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-global3[_wgslsmith_index_u32(1u, 28u)], _wgslsmith_clamp_i32(global0.x, global0.x, -2821i)), global0.x), ~select(vec2<i32>(-39315i, 80213i), vec2<i32>(-2147483647i, global0.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_3(!func_1(), 592f));
    global1 = array<Struct_2, 25>();
    global2 = Struct_3(Struct_1(true, global2.c.wy), func_3(false, 679f), ~_wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(11098u), ~global2.e.c.b.x, ~20613u, global2.a.b.x), global2.c), !any(!(!vec2<bool>(true, global2.d))), func_3((~global0.x << (2230u % 32u)) != (35927i ^ firstTrailingBit(global0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + -704f))), 518f)));
    var var_0 = global2.e.c;
    var var_1 = Struct_1(!(global2.e.b.b.x <= 3282u), ~_wgslsmith_mult_vec2_u32(~(vec2<u32>(1u, var_0.b.x) | vec2<u32>(var_0.b.x, global2.b.b.b.x)), ~var_0.b));
    var var_2 = global2.b.c;
    var var_3 = var_0.b.x;
    let var_4 = firstTrailingBit(abs(global2.c));
    let var_5 = Struct_1(false, vec2<u32>(abs(min(var_1.b.x, var_0.b.x)), ~_wgslsmith_add_u32(var_4.x, 21715u)) | min(global2.c.yy, _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.b.x, var_4.x), var_2.b, vec2<u32>(var_1.b.x, 1u)), ~vec2<u32>(0u, 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global3[_wgslsmith_index_u32(var_5.b.x, 28u)]), vec2<i32>(-1i, global0.x))), -12487i), global2.c.xzz);
}


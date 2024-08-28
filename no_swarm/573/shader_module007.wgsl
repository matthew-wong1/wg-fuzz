struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 12> = array<Struct_5, 12>(Struct_5(Struct_3(Struct_2(vec4<i32>(-1i, -39659i, 0i, 2147483647i), 6367i), Struct_1(6736u, vec2<bool>(true, true), vec3<i32>(94986i, -24703i, 0i)), 7850u, vec3<u32>(4294967295u, 0u, 21626u)), Struct_1(4294967295u, vec2<bool>(false, true), vec3<i32>(-12358i, 0i, -15691i)), -11986i, -232f, true), Struct_5(Struct_3(Struct_2(vec4<i32>(45132i, 0i, 23532i, 2147483647i), 0i), Struct_1(18657u, vec2<bool>(false, true), vec3<i32>(-9081i, -1i, 7585i)), 1u, vec3<u32>(0u, 30378u, 62541u)), Struct_1(40985u, vec2<bool>(true, false), vec3<i32>(51629i, 21962i, 2147483647i)), -1i, -1000f, false), Struct_5(Struct_3(Struct_2(vec4<i32>(i32(-2147483648), 51658i, 40534i, 0i), -17185i), Struct_1(0u, vec2<bool>(true, false), vec3<i32>(-8071i, i32(-2147483648), 1i)), 0u, vec3<u32>(24618u, 19337u, 1u)), Struct_1(298u, vec2<bool>(false, true), vec3<i32>(0i, -68246i, 0i)), -62911i, 935f, false), Struct_5(Struct_3(Struct_2(vec4<i32>(-1i, 1i, -1i, 0i), i32(-2147483648)), Struct_1(24805u, vec2<bool>(true, true), vec3<i32>(i32(-2147483648), -14580i, 32884i)), 4294967295u, vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(10797u, vec2<bool>(true, false), vec3<i32>(-22384i, 2147483647i, 2147483647i)), 0i, -1616f, true), Struct_5(Struct_3(Struct_2(vec4<i32>(-56450i, -1i, 2147483647i, 2147483647i), -25157i), Struct_1(4294967295u, vec2<bool>(true, false), vec3<i32>(0i, 21459i, -71843i)), 0u, vec3<u32>(63722u, 28867u, 0u)), Struct_1(1u, vec2<bool>(false, false), vec3<i32>(i32(-2147483648), 0i, 0i)), 0i, 171f, false), Struct_5(Struct_3(Struct_2(vec4<i32>(-24863i, 2147483647i, -1i, 2147483647i), -1i), Struct_1(24769u, vec2<bool>(false, false), vec3<i32>(-5637i, -1i, -1i)), 8752u, vec3<u32>(81135u, 4294967295u, 1u)), Struct_1(4294967295u, vec2<bool>(false, false), vec3<i32>(-1i, 1i, i32(-2147483648))), 1i, -1139f, false), Struct_5(Struct_3(Struct_2(vec4<i32>(25020i, 16066i, 14301i, 14162i), 25351i), Struct_1(0u, vec2<bool>(false, false), vec3<i32>(11660i, -46226i, 2147483647i)), 0u, vec3<u32>(1u, 0u, 1u)), Struct_1(44862u, vec2<bool>(false, false), vec3<i32>(i32(-2147483648), -1i, -79073i)), 13355i, 1272f, false), Struct_5(Struct_3(Struct_2(vec4<i32>(-69876i, 14438i, -13191i, i32(-2147483648)), -38280i), Struct_1(61050u, vec2<bool>(false, false), vec3<i32>(-1i, 1i, 5643i)), 47747u, vec3<u32>(4294967295u, 1u, 41774u)), Struct_1(104375u, vec2<bool>(true, true), vec3<i32>(21023i, -1i, -3513i)), -1i, -1404f, false), Struct_5(Struct_3(Struct_2(vec4<i32>(2147483647i, 0i, i32(-2147483648), -1i), 2147483647i), Struct_1(9139u, vec2<bool>(false, false), vec3<i32>(35490i, i32(-2147483648), 17840i)), 1488u, vec3<u32>(1u, 1u, 7295u)), Struct_1(4294967295u, vec2<bool>(true, true), vec3<i32>(0i, -48951i, 0i)), i32(-2147483648), -194f, true), Struct_5(Struct_3(Struct_2(vec4<i32>(-18342i, 39686i, i32(-2147483648), -10933i), 25129i), Struct_1(68061u, vec2<bool>(false, true), vec3<i32>(0i, 7724i, 1i)), 2790u, vec3<u32>(59072u, 52441u, 49093u)), Struct_1(33893u, vec2<bool>(false, true), vec3<i32>(15736i, -1i, -1i)), 16624i, 911f, false), Struct_5(Struct_3(Struct_2(vec4<i32>(-31834i, -1i, 2147483647i, i32(-2147483648)), 72942i), Struct_1(4294967295u, vec2<bool>(false, true), vec3<i32>(-29406i, i32(-2147483648), 19998i)), 0u, vec3<u32>(34073u, 28985u, 55561u)), Struct_1(8970u, vec2<bool>(false, false), vec3<i32>(36904i, i32(-2147483648), 33469i)), 1i, -351f, true), Struct_5(Struct_3(Struct_2(vec4<i32>(-33691i, -1i, -28069i, 27668i), i32(-2147483648)), Struct_1(0u, vec2<bool>(false, true), vec3<i32>(i32(-2147483648), -1i, 5993i)), 1u, vec3<u32>(38395u, 34360u, 57111u)), Struct_1(16333u, vec2<bool>(false, false), vec3<i32>(-290i, i32(-2147483648), 1i)), -15541i, 823f, true));

var<private> global1: Struct_3;

var<private> global2: f32 = 536f;

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(15976u, vec2<bool>(true, true), vec3<i32>(0i, -860i, 1i)), Struct_1(0u, vec2<bool>(true, true), vec3<i32>(2147483647i, 1i, 23103i)), Struct_1(4294967295u, vec2<bool>(false, false), vec3<i32>(-15382i, 0i, 1i)), Struct_1(462u, vec2<bool>(true, true), vec3<i32>(66596i, 34040i, 50225i)), Struct_1(1u, vec2<bool>(true, false), vec3<i32>(1i, -12827i, -45000i)), Struct_1(47137u, vec2<bool>(false, false), vec3<i32>(-1i, i32(-2147483648), 2147483647i)), Struct_1(14794u, vec2<bool>(true, true), vec3<i32>(-10119i, -43568i, 53715i)), Struct_1(50159u, vec2<bool>(true, false), vec3<i32>(12963i, 2147483647i, 1i)), Struct_1(43370u, vec2<bool>(true, false), vec3<i32>(29366i, 49422i, -1i)), Struct_1(21872u, vec2<bool>(false, false), vec3<i32>(i32(-2147483648), 1i, 51332i)), Struct_1(1u, vec2<bool>(false, true), vec3<i32>(11075i, 58590i, -12450i)), Struct_1(4294967295u, vec2<bool>(true, true), vec3<i32>(-41254i, i32(-2147483648), 2147483647i)), Struct_1(4294967295u, vec2<bool>(false, true), vec3<i32>(4402i, -5753i, 1i)), Struct_1(34459u, vec2<bool>(true, false), vec3<i32>(2147483647i, 87i, -75339i)), Struct_1(4294967295u, vec2<bool>(false, false), vec3<i32>(-1i, 0i, -10818i)), Struct_1(11179u, vec2<bool>(false, true), vec3<i32>(1i, 0i, 43005i)), Struct_1(9565u, vec2<bool>(true, false), vec3<i32>(41375i, 1i, 0i)), Struct_1(1u, vec2<bool>(true, true), vec3<i32>(54890i, 34414i, 15215i)), Struct_1(86324u, vec2<bool>(true, false), vec3<i32>(-1i, 2147483647i, 18436i)), Struct_1(53860u, vec2<bool>(true, true), vec3<i32>(-42040i, -15285i, -1i)), Struct_1(1u, vec2<bool>(true, false), vec3<i32>(-25106i, 2147483647i, 2147483647i)), Struct_1(1u, vec2<bool>(true, true), vec3<i32>(-15279i, 1i, 2147483647i)), Struct_1(28732u, vec2<bool>(false, true), vec3<i32>(-1i, 30187i, -1i)));

var<private> global4: i32 = 21307i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_5, arg_3: i32) -> vec4<bool> {
    global2 = 1036f;
    let var_0 = true | (firstTrailingBit(_wgslsmith_mult_i32(countOneBits(arg_3), -58129i)) > -max(max(-5613i, 1i), -arg_3));
    var var_1 = vec3<i32>((_wgslsmith_mult_i32(_wgslsmith_mult_i32(global1.b.c.x, 2147483647i), global1.b.c.x) << (abs(global1.c ^ arg_2.a.b.a) % 32u)) << (1u % 32u), -abs(~global1.a.b), ~countOneBits(~_wgslsmith_add_i32(2147483647i, global1.b.c.x)));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))))) * arg_0);
    var var_2 = arg_2.b;
    return select(vec4<bool>(var_0, !any(vec4<bool>(global1.b.b.x, false, arg_2.a.b.b.x, true)), select(true, true, true), global1.b.b.x), !select(vec4<bool>(all(vec3<bool>(true, true, global1.b.b.x)), global1.b.b.x, true, var_1.x != arg_1.c.x), vec4<bool>(arg_1.b.x, !var_2.b.x, true, arg_1.b.x), firstLeadingBit(4294967295u) == countOneBits(var_2.a)), arg_1.b.x);
}

fn func_2() -> Struct_3 {
    global1 = Struct_3(Struct_2(-(global1.a.a << (~vec4<u32>(4294967295u, global1.c, global1.d.x, 0u) % vec4<u32>(32u))), -global1.a.a.x), global1.b, 46822u, firstTrailingBit(global1.d));
    var var_0 = !select(!(!select(vec4<bool>(false, global1.b.b.x, global1.b.b.x, true), vec4<bool>(true, global1.b.b.x, false, global1.b.b.x), vec4<bool>(true, false, false, global1.b.b.x))), !(!func_3(-423f, Struct_1(27519u, global1.b.b, global1.b.c), global0[_wgslsmith_index_u32(1u, 12u)], 18844i)), true);
    let var_1 = var_0.x;
    var var_2 = true;
    let var_3 = _wgslsmith_div_u32(global1.b.a, 67924u);
    return Struct_3(global1.a, global3[_wgslsmith_index_u32(global1.d.x, 23u)], _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.a << (4294967295u % 32u), ~global1.b.a, ~global1.b.a, ~global1.b.a), vec4<u32>(global1.d.x, global1.d.x, ~4294967295u, var_3)), 9263u), ~global1.d);
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    global1 = func_2();
    global4 = u_input.a;
    var var_0 = Struct_4(~vec2<i32>(-28759i, _wgslsmith_mult_i32(0i, -1i)), global1.a);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-882f, 1f), -142f)));
    global0 = array<Struct_5, 12>();
    return _wgslsmith_f_op_f32(f32(-1f) * -140f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.c.x;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(global1.a.a.wzw >> (vec3<u32>(global1.b.a, 29597u, 0u) % vec3<u32>(32u)))), -289f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-779f - -247f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2381f + 123f))))));
    let var_1 = _wgslsmith_f_op_f32(-1000f * -516f);
    let var_2 = func_2().b;
    let var_3 = global1.a.a;
    let x = u_input.a;
    s_output = StorageBuffer(~19595u, global1.d.zz, global1.a.a, 0u, _wgslsmith_mult_u32(~firstTrailingBit(global1.b.a), global1.d.x));
}


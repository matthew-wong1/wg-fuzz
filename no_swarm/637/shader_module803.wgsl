// {"0:0":[102,100,160,75]}
// Seed: 708166357509586651

struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30>;

var<private> global1: Struct_2 = Struct_2(Struct_1(36076i, vec4<u32>(30783u, 1u, 1u, 21812u)), Struct_1(-30399i, vec4<u32>(119728u, 1u, 2345u, 17012u)), vec3<i32>(-37246i, -1i, 0i));

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> i32 {
    var var_0 = ~vec3<i32>(~arg_1.d.x, abs(14372i), -11110i) ^ abs(reverseBits(global1.c & (global1.c / vec3<i32>(arg_2.a, 0i, -14809i))));
    var_0 = vec3<i32>(~(~(~(-1i))), abs(-31286i), -(-(-21546i))) % vec3<i32>(17665i - ~clamp(2147483647i, 2147483647i, 10759i), global1.c.x, -1i);
    global0 = array<vec3<u32>, 30>();
    let var_1 = any(vec4<bool>(arg_3 & true, true, any(select(vec2<bool>(false, arg_3), select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, arg_3), true), !true)), select(any(select(vec4<bool>(arg_3, arg_3, false, arg_3), vec4<bool>(arg_3, arg_3, arg_3, arg_3), false)), arg_3, !arg_3)));
    global1 = Struct_2(Struct_1(arg_2.a, abs(vec4<u32>(reverseBits(arg_1.a.a.b.x), ~67008u, 1u, ~4294967295u))), Struct_1(-23300i, vec4<u32>(arg_1.a.a.b.x, dot(select(arg_1.a.a.b.wxz, global1.a.b.xwy, true), firstTrailingBit(arg_1.a.a.b.yxw)), ~(arg_2.b.x | arg_1.a.a.b.x), dot(vec4<u32>(0u, global1.a.b.x, 4590u, 0u) % arg_2.b, vec4<u32>(4294967295u, 41977u, 4294967295u, 16712u) % vec4<u32>(u_input.a, global1.a.b.x, global1.b.b.x, global1.b.b.x)))), ~select(reverseBits(arg_1.a.c) / firstLeadingBit(global1.c), -min(vec3<i32>(0i, arg_2.a, 0i), vec3<i32>(-39582i, 47902i, global1.a.a)), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, arg_3), vec3<bool>(true, var_1, arg_3))));
    return 29558i + (abs(global1.b.a) & -12017i);
}

fn func_2(arg_0: u32) -> f32 {
    global0 = array<vec3<u32>, 30>();
    var var_0 = Struct_3(Struct_2(global1.b, global1.a, global1.c), dot(countOneBits(vec3<i32>(reverseBits(-11445i), dot(vec3<i32>(global1.a.a, 15459i, global1.a.a), global1.c), global1.b.a / 1i)), abs(global1.c & global1.c) | vec3<i32>(clamp(i32(-2147483648), 16511i, 1i), i32(-2147483648), 2147483647i)), clamp(~(-func_3(vec2<f32>(1155f, -785f), Struct_3(Struct_2(Struct_1(0i, vec4<u32>(global1.b.b.x, 0u, arg_0, 103964u)), Struct_1(-1i, vec4<u32>(global1.a.b.x, u_input.a, arg_0, u_input.a)), global1.c), global1.a.a, 1i, vec4<i32>(-1i, global1.c.x, global1.c.x, global1.a.a), vec2<f32>(-535f, 528f)), Struct_1(2147483647i, global1.a.b), true)), global1.a.a + (dot(vec4<i32>(33398i, 7653i, 30388i, global1.b.a), vec4<i32>(83876i, -3820i, global1.b.a, global1.a.a)) % 24459i), ~(~global1.a.a) + ~(~global1.a.a)), -min(vec4<i32>(global1.c.x, ~(-1i), -(-25340i), 1i ^ global1.b.a), vec4<i32>(581i, i32(-2147483648) | -9091i, global1.c.x, 10716i | global1.a.a)), -min(-vec2<f32>(839f, 924f) + (vec2<f32>(-1757f, -1000f) + vec2<f32>(-429f, -795f)), vec2<f32>(1146f - 1427f, -427f)));
    global0 = array<vec3<u32>, 30>();
    global0 = array<vec3<u32>, 30>();
    var var_1 = Struct_4(~(-(var_0.a.b.a ^ 12261i)) ^ -40108i);
    return var_0.e.x;
}

fn func_1() -> Struct_2 {
    var var_0 = vec3<bool>(true && (false & false), true, !any(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))));
    var var_1 = (exp2(func_2(~u_input.a)) / sign((-991f + 221f) / (154f * -1228f))) + -(2190f * -422f);
    let var_2 = -abs(~vec4<i32>(~global1.a.a, 4168i >> u_input.a, clamp(44091i, global1.a.a, global1.c.x), abs(26624i)));
    var var_3 = Struct_2(global1.a, Struct_1(select(~(-1i) % 39504i, ~var_2.x, all(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, false, true), var_0.x))), select((global1.b.b << vec4<u32>(u_input.a, 1u, u_input.a, 0u)) & vec4<u32>(0u, global1.a.b.x, 1u, global1.b.b.x), select(vec4<u32>(71008u, 54519u, u_input.a, u_input.a), vec4<u32>(66546u, global1.b.b.x, u_input.a, 3207u), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, var_0.x), var_0.x)), !vec4<bool>(false, true, true, var_0.x))), global1.c);
    var var_4 = Struct_2(Struct_1(var_3.c.x << ~var_3.b.b.x, max(~vec4<u32>(1u, 10795u, 1u, 20363u), (vec4<u32>(global1.b.b.x, 16980u, 8106u, global1.b.b.x) + vec4<u32>(global1.b.b.x, var_3.a.b.x, 19852u, u_input.a)) >> var_3.a.b)), global1.b, -(-vec3<i32>(-1i >> 0u, var_2.x + i32(-2147483648), var_2.x)));
    return Struct_2(var_4.a, Struct_1(~dot(var_4.c, global1.c) & -abs(0i), ~(~vec4<u32>(u_input.a, u_input.a, 17368u, 1u)) >> ((var_3.b.b * var_3.b.b) + abs(global1.b.b))), ~(-var_4.c << vec3<u32>(~global1.b.b.x, ~u_input.a, 1u)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3) -> u32 {
    let var_0 = dot(-arg_0 >> select(select(vec2<u32>(arg_1.a.b.b.x, global1.b.b.x), vec2<u32>(global1.b.b.x, u_input.a), vec2<bool>(false, true)) >> ~vec2<u32>(arg_1.a.a.b.x, 1u), vec2<u32>(u_input.a | 1u, u_input.a + global1.a.b.x), (-879f - arg_1.e.x) < -302f), ~min(firstTrailingBit(select(vec2<i32>(65957i, arg_1.b), vec2<i32>(-17460i, i32(-2147483648)), vec2<bool>(false, true))), ~global1.c.xx));
    let var_1 = Struct_1(~dot(firstTrailingBit(global1.c), global1.c), global1.a.b & ~vec4<u32>(countOneBits(u_input.a), firstTrailingBit(82684u), global1.a.b.x ^ u_input.a, 1u));
    let var_2 = func_1().b;
    var var_3 = func_3(((arg_1.e + vec2<f32>(-1203f, 1145f)) / (arg_1.e + vec2<f32>(-539f, -534f))) * arg_1.e, Struct_3(func_1(), ~(-1i) / (-11552i >> 0u), 1i, vec4<i32>(-16181i, 0i ^ var_1.a, -var_2.a, -31049i), arg_1.e + -vec2<f32>(arg_1.e.x, arg_1.e.x)), Struct_1(-26915i, ~(vec4<u32>(104425u, 14384u, 1u, u_input.a) % vec4<u32>(var_1.b.x, var_2.b.x, 0u, 31353u))), false && all(select(vec2<bool>(true, false), vec2<bool>(true, false), false))) >> global1.b.b.x;
    var var_4 = Struct_1(i32(-2147483648), ~((abs(vec4<u32>(36706u, global1.b.b.x, 14015u, u_input.a)) & ~vec4<u32>(u_input.a, arg_1.a.a.b.x, arg_1.a.b.b.x, global1.a.b.x)) * global1.a.b));
    return ~min(dot(vec2<u32>(arg_1.a.a.b.x, var_1.b.x), var_1.b.yx / vec2<u32>(arg_1.a.b.b.x, 70874u)), reverseBits(u_input.a & 21366u)) & dot(var_1.b.wyw, vec3<u32>(arg_1.a.a.b.x, ~4449u, 4294967295u));
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = (~min(arg_1.d, vec4<i32>(global1.c.x, global1.a.a, arg_1.c, global1.c.x) << arg_1.a.a.b) % vec4<i32>(global1.c.x, abs(arg_1.b), max(global1.a.a, func_3(vec2<f32>(arg_1.e.x, 1424f), arg_1, Struct_1(arg_1.d.x, vec4<u32>(u_input.a, arg_1.a.a.b.x, global1.b.b.x, 39708u)), arg_2.x)), global1.c.x)) % arg_1.d;
    let var_1 = func_1().b;
    let var_2 = Struct_1(~(-1i + arg_1.d.x), ~abs(~vec4<u32>(16900u, var_1.b.x, arg_0, 62813u)) / vec4<u32>(~abs(global1.a.b.x), 4294967295u, global1.b.b.x ^ arg_0, ~countOneBits(4294967295u)));
    global0 = array<vec3<u32>, 30>();
    global1 = arg_1.a;
    return Struct_2(Struct_1(dot(vec3<i32>(-29200i >> var_1.b.x, -21654i >> 19411u, min(global1.a.a, var_0.x)), vec3<i32>(-var_2.a, var_1.a, func_1().c.x)), select(vec4<u32>(0u, 27967u - 4294967295u, 47603u, firstLeadingBit(arg_1.a.a.b.x)), var_2.b - func_1().a.b, arg_2.x)), Struct_1(-countOneBits(var_0.x >> 1u), global1.a.b), -(-vec3<i32>(40733i, var_2.a, global1.b.a)));
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: Struct_4) -> Struct_3 {
    var var_0 = Struct_3(Struct_2(Struct_1(1i, ~(~vec4<u32>(1u, arg_0.a.b.x, 4294967295u, 1u))), global1.a, vec3<i32>(-(arg_0.c.x >> 4294967295u), (arg_0.b.a << global1.a.b.x) >> ~93897u, min(select(i32(-2147483648), arg_2.a, false), abs(global1.c.x)))), -(-37005i), min(-dot(-vec4<i32>(global1.a.a, arg_2.a, arg_0.c.x, global1.a.a), vec4<i32>(0i, arg_2.a, arg_2.a, 1i) % vec4<i32>(33761i, arg_2.a, 49452i, arg_2.a)), abs(-arg_2.a - func_1().a.a)), (vec4<i32>(-2147483647i, -arg_0.b.a, dot(vec2<i32>(arg_0.a.a, -1i), vec2<i32>(arg_0.b.a, 0i)), dot(vec4<i32>(1i, 19825i, arg_2.a, arg_0.a.a), vec4<i32>(global1.a.a, 2147483647i, global1.b.a, 0i))) | ((vec4<i32>(-18446i, -1i, arg_0.a.a, global1.b.a) / vec4<i32>(-1i, arg_2.a, arg_2.a, 1i)) & countOneBits(vec4<i32>(-337i, 0i, global1.c.x, 7275i)))) ^ (-vec4<i32>(arg_2.a, 0i, 46361i, arg_2.a) >> vec4<u32>(54355u, 34726u % 4294967295u, 14534u, u_input.a / 5747u)), min(exp2(vec2<f32>(251f, 315f) * select(vec2<f32>(975f, 581f), vec2<f32>(-953f, -1526f), vec2<bool>(false, arg_1))), -vec2<f32>(-884f * 357f, func_2(64211u))));
    let var_1 = arg_0.a.b.yw;
    var var_2 = Struct_2(Struct_1(arg_2.a, vec4<u32>(u_input.a - firstTrailingBit(4294967295u), 49154u, firstLeadingBit(35317u), ~u_input.a ^ 39786u)), arg_0.a, vec3<i32>(arg_0.a.a, -30139i, clamp(-arg_2.a, i32(-2147483648), -(global1.c.x - 2147483647i))));
    let var_3 = -(-(func_2(var_0.a.b.b.x >> 4294967295u) - -(-var_0.e.x)));
    global1 = func_1();
    return Struct_3(Struct_2(func_5(abs(var_1.x ^ var_1.x), Struct_3(Struct_2(Struct_1(2147483647i, vec4<u32>(u_input.a, var_2.b.b.x, arg_0.a.b.x, global1.a.b.x)), var_2.a, vec3<i32>(arg_2.a, 2675i, -1i)), ~(i32(-2147483648)), arg_0.b.a, vec4<i32>(1i, arg_0.b.a, arg_2.a, var_0.c), var_0.e), vec4<bool>(!false, any(vec3<bool>(arg_1, false, false)), arg_1, any(vec2<bool>(false, false)))).a, Struct_1(~(arg_0.c.x | var_0.c), var_2.b.b), countOneBits(vec3<i32>(6532i * global1.b.a, arg_2.a, 1i))), func_5(0u, Struct_3(func_5(var_0.a.b.b.x - 11404u, Struct_3(var_0.a, 2147483647i, 7142i, var_0.d, vec2<f32>(-258f, var_3)), !vec4<bool>(false, true, false, arg_1)), max(-18838i, 1i), ~(~var_0.a.c.x), ~(-vec4<i32>(var_0.b, arg_2.a, var_0.c, arg_0.a.a)), vec2<f32>(-1473f + var_0.e.x, -949f)), select(!vec4<bool>(arg_1, true, arg_1, arg_1), select(!vec4<bool>(arg_1, true, arg_1, true), select(vec4<bool>(false, false, arg_1, true), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(arg_1, false, true, true)), !arg_1), any(!vec3<bool>(true, false, false)))).c.x, dot(arg_0.c.zx << max(reverseBits(vec2<u32>(48104u, 4294967295u)), ~vec2<u32>(8270u, 0u)), global1.c.zy | -(vec2<i32>(var_2.b.a, -7566i) & var_2.c.yx)), var_0.d, -(-var_0.e * vec2<f32>(2810f, var_0.e.x)) / (vec2<f32>(104f / -1584f, 319f - var_0.e.x) / vec2<f32>(var_0.e.x, -765f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(func_4(vec2<i32>(-(-1i), 13647i), Struct_3(func_1(), 0i, global1.b.a & 13574i, ~vec4<i32>(0i, -1i, 2202i, -15618i), -vec2<f32>(-577f, 1000f))), Struct_3(func_1(), -(~global1.b.a), select(-global1.b.a, 1i / global1.c.x, true), ~(-vec4<i32>(51998i, global1.b.a, global1.a.a, global1.c.x)), -(-vec2<f32>(-914f, -786f))), select(vec4<bool>(!true, all(vec4<bool>(false, false, false, false)), global1.b.a < 0i, !false), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false), !vec4<bool>(false, true, false, true)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), true), vec4<bool>(false, false, false, false)))), false, Struct_4(~(~(~global1.c.x))));
    global0 = array<vec3<u32>, 30>();
    global1 = func_5(~u_input.a, var_0, select(vec4<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), true, !(var_0.e.x < var_0.e.x)), select(!(!vec4<bool>(true, true, false, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, false, true)), abs(u_input.a) < ~78949u), vec4<bool>((var_0.e.x + var_0.e.x) > 342f, !true, true, !(!false))));
    var var_1 = var_0.e;
    global0 = array<vec3<u32>, 30>();
    var var_2 = ~(-global1.b.a) > func_1().a.a;
    var var_3 = vec2<bool>(select(all(!(!vec3<bool>(false, true, true))), !(!(!true)), true), !(40902u > 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.b.b.x % countOneBits(var_0.a.a.b.x), var_0.e);
}


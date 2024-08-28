// {"0:0":[166,182,15,91]}
// Seed: 1795036222324089015

struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(32767u, 2033u), vec2<u32>(1u, 42121u), vec2<u32>(4294967295u, 58685u), vec2<u32>(2739u, 63025u), vec2<u32>(11187u, 7490u), vec2<u32>(1u, 0u), vec2<u32>(10891u, 4294967295u), vec2<u32>(0u, 51880u), vec2<u32>(1u, 0u), vec2<u32>(80353u, 514u), vec2<u32>(46651u, 54402u), vec2<u32>(35862u, 119818u));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(51442i, 1305i, -36519i));

var<private> global2: array<i32, 24>;

var<private> global3: vec4<f32>;

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> f32 {
    let var_0 = arg_1;
    let var_1 = clamp(~4294967295u, ~(firstTrailingBit(15817u) & (28810u << 0u)), 30456u) <= ~(1u | dot(abs(vec4<u32>(1u, 1u, 0u, 4294967295u)), ~vec4<u32>(0u, 1u, 35362u, 6985u)));
    var var_2 = global1.a.x | max(abs(reverseBits(global2[abs(4294967295u)])), -2147483647i);
    global3 = -(-(vec4<f32>(-1051f, global3.x, global3.x, select(global3.x, 475f, true)) + (abs(vec4<f32>(global3.x, 535f, global3.x, -1703f)) - (vec4<f32>(global3.x, global3.x, -1000f, 1088f) * vec4<f32>(-158f, global3.x, -1506f, global3.x)))));
    global3 = -select(vec4<f32>(-1000f * -662f, -1182f, -160f, global3.x) * ((vec4<f32>(global3.x, global3.x, 1000f, 2390f) - vec4<f32>(global3.x, global3.x, 1562f, global3.x)) * floor(vec4<f32>(-212f, global3.x, global3.x, -844f))), step(vec4<f32>(global3.x - -1256f, global3.x, -1000f, -130f), vec4<f32>(global3.x, max(global3.x, global3.x), 806f, 1478f)), var_1);
    return 1118f;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32) -> i32 {
    let var_0 = ~vec3<u32>(clamp(3555u >> 0u, 9593u, ~63410u), dot(select(vec4<u32>(4294967295u, 6455u, 6106u, 1u), vec4<u32>(1u, 0u, 52815u, 0u), true), ~vec4<u32>(1u, 4294967295u, 7619u, 0u)), 14136u / (52215u - 56400u)) / (select(~(~vec3<u32>(23254u, 15396u, 0u)), clamp(max(vec3<u32>(4294967295u, 6328u, 21648u), vec3<u32>(11601u, 153486u, 0u)), clamp(vec3<u32>(18448u, 1u, 1u), vec3<u32>(21759u, 1u, 0u), vec3<u32>(0u, 0u, 1u)), ~vec3<u32>(26747u, 25821u, 9669u)), !false) + vec3<u32>(~1u, clamp(1u, 39922u, 31110u) & 4294967295u, ~1u));
    var var_1 = Struct_1(firstLeadingBit(global1.a));
    var var_2 = abs(var_1.a.yz);
    let var_3 = arg_0.x;
    var var_4 = Struct_1(global1.a);
    return var_1.a.x << 22758u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    global0 = array<vec2<u32>, 12>();
    var var_0 = vec2<f32>(146f + -1718f, global3.x);
    let var_1 = func_4(vec3<f32>(155f, global3.x, func_3(-(vec3<i32>(u_input.a, global2[20148u], global1.a.x) >> vec3<u32>(0u, 102144u, 82645u)), Struct_1(arg_0.xwz), (1u ^ 1u) > dot(vec4<u32>(4294967295u, 12347u, 0u, 4294967295u), vec4<u32>(9147u, 12955u, 109800u, 0u)))), 3229i);
    var var_2 = Struct_1(~(-(-vec3<i32>(-20839i, var_1, arg_0.x)) % vec3<i32>(~var_1, arg_0.x, max(i32(-2147483648), arg_0.x))));
    var var_3 = vec2<u32>(~19462u, 1u);
    return ~var_1;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = global3.x * (floor(-global3.x + 1000f) / ceil(global3.x));
    let var_1 = !vec3<bool>(false, !true, func_2(abs(vec4<i32>(arg_0, global2[arg_1], i32(-2147483648), arg_0)), vec4<f32>(global3.x, global3.x, global3.x, global3.x), arg_2) > -firstLeadingBit(u_input.a));
    global3 = -vec4<f32>(global3.x * floor(764f), global3.x, -(-(global3.x / -473f)), -1290f);
    global3 = -vec4<f32>(-(-137f / -global3.x), -(-(-1169f)), global3.x, -1288f);
    var_0 = abs(global3.x - ((global3.x * global3.x) * sign(global3.x))) / -601f;
    return global0[dot(vec3<u32>(~1u >> arg_1, arg_1, arg_1), vec3<u32>(50830u, ~arg_1 >> ~(~4294967295u), arg_1))];
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    global3 = -(-(floor(vec4<f32>(global3.x, -1000f, 1246f, 662f)) + floor(vec4<f32>(-973f, 255f, 1258f, 1428f))) - sign(sign(vec4<f32>(global3.x, 2062f, global3.x, global3.x)) * -vec4<f32>(-961f, global3.x, 1168f, global3.x)));
    var var_0 = arg_2;
    let var_1 = arg_2;
    global2 = array<i32, 24>();
    global1 = var_1;
    return Struct_1(vec3<i32>(u_input.a, -68394i, arg_1));
}

fn func_6(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global3 = vec4<f32>(-133f, -536f, global3.x, trunc(-1000f + -global3.x)) - -ceil(abs(-vec4<f32>(global3.x, global3.x, -219f, -430f)));
    var var_0 = vec3<u32>(~countOneBits(firstLeadingBit(18530u) / (27558u ^ 1u)), 1u, 0u);
    global0 = array<vec2<u32>, 12>();
    var_0 = ~(vec3<u32>(1u | 19922u, 390u, var_0.x) / clamp(countOneBits(vec3<u32>(0u, 15825u, var_0.x)), vec3<u32>(var_0.x, var_0.x, var_0.x) % vec3<u32>(1u, 3221u, 116353u), reverseBits(vec3<u32>(var_0.x, 4654u, var_0.x)))) * (vec3<u32>(75532u | (var_0.x + 1u), ~var_0.x, ~clamp(4294967295u, var_0.x, 0u)) ^ (vec3<u32>(4294967295u, countOneBits(var_0.x), var_0.x >> 66231u) & (vec3<u32>(var_0.x, var_0.x, 10219u) + abs(vec3<u32>(20915u, var_0.x, var_0.x)))));
    global2 = array<i32, 24>();
    return global3.x / -206f;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<f32>(-global3.x, -func_6(global2[dot(global0[27103u], global0[0u])] ^ abs(global1.a.x), !vec2<bool>(false, false), func_5(func_1(26869i, 39923u, Struct_1(global1.a)), ~(-1i), Struct_1(vec3<i32>(u_input.a, global2[58505u], global2[4294967295u]))), Struct_1(vec3<i32>(-11489i, -10560i, 7307i))), global3.x, -ceil(global3.x));
    global2 = array<i32, 24>();
    var var_0 = !(!(firstTrailingBit(global1.a.x) > ~global2[21230u])) == true;
    var var_1 = u_input.a << abs(1u);
    var var_2 = min((reverseBits(~vec4<i32>(2147483647i, global1.a.x, 0i, -1i)) << (vec4<u32>(15772u, 0u, 64006u, 1u) | vec4<u32>(7209u, 15310u, 67945u, 38764u))) / (clamp(vec4<i32>(global2[0u], -23256i, global1.a.x, u_input.a), abs(vec4<i32>(global1.a.x, u_input.a, i32(-2147483648), u_input.a)), vec4<i32>(global1.a.x, 5330i, global1.a.x, -53695i)) / ~select(vec4<i32>(global1.a.x, u_input.a, 13931i, global2[66063u]), vec4<i32>(-53139i, -1i, i32(-2147483648), 57959i), vec4<bool>(true, true, false, true))), clamp(vec4<i32>(global2[1u] & 66772i, abs(u_input.a), 19497i, -(-31086i)), vec4<i32>(global2[37786u], u_input.a, 55625i, global2[0u]) << (vec4<u32>(1u, 50961u, 0u, 1u) << vec4<u32>(4294967295u, 1u, 0u, 1u)), vec4<i32>(2147483647i, global2[60885u], u_input.a, global1.a.x) | (vec4<i32>(i32(-2147483648), global1.a.x, -63176i, u_input.a) * vec4<i32>(global1.a.x, i32(-2147483648), 0i, u_input.a))) - vec4<i32>(-1i, firstLeadingBit(firstLeadingBit(global1.a.x)), reverseBits(1i / i32(-2147483648)), -1i));
    let var_3 = Struct_1(var_2.wyx);
    let x = u_input.a;
    s_output = StorageBuffer(-(-(-(-vec3<i32>(var_3.a.x, global2[4294967295u], global2[4294967295u])))), abs(select(reverseBits(vec4<u32>(4294967295u, 1u, 6813u, 7350u)), ~vec4<u32>(24919u, 25841u, 4294967295u, 1u), true | true) / ~(~vec4<u32>(1253u, 806u, 25304u, 1u))), vec3<i32>(-1i, -1i, 2147483647i % global1.a.x));
}


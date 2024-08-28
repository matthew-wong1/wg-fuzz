// {"0:0":[15,217,185,194,118,39,92,194,123,78,99,246,115,64,20,86,252,19,60,100,11,217,175,4,126,62,207,44,236,14,42,7,63,183,95,181,63,62,50,130,83,33,45,178,133,7,66,122,70,40,69,161,9,254,250,116,243,194,212,197,157,187,255,101]}
// Seed: 3668553783066196222

struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16>;

var<private> global1: i32 = 1i;

var<private> global2: array<Struct_1, 5>;

var<private> global3: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

fn func_3() -> vec3<i32> {
    var var_0 = -(-1144f);
    var var_1 = u_input.b.x;
    var var_2 = true;
    let var_3 = ~69020u;
    let var_4 = Struct_1(firstLeadingBit(~(~abs(u_input.b))), -(-max(155f, 1477f)) - abs(abs(floor(-181f))), ~reverseBits(0u), abs(~(~u_input.a | var_3)));
    return -min((u_input.e >> vec3<u32>(var_3, 31793u, var_3)) + (min(vec3<i32>(10221i, var_4.a.x, 2147483647i), var_4.a) * (vec3<i32>(-1i, -34700i, 2147483647i) % vec3<i32>(u_input.e.x, 29651i, var_4.a.x))), var_4.a);
}

fn func_2(arg_0: bool) -> u32 {
    global1 = u_input.e.x ^ (~dot(vec4<i32>(-586i, u_input.e.x, 2147483647i, 1i), vec4<i32>(u_input.c, u_input.b.x, 30360i, -2652i)) / -35301i);
    let var_0 = i32(-2147483648);
    global0 = array<vec4<bool>, 16>();
    global0 = array<vec4<bool>, 16>();
    var var_1 = Struct_1(func_3(), max(-select(149f, -107f, false) - -(-1752f), 190f), ~u_input.a & (~(~11976u) ^ reverseBits(clamp(0u, 1u, 4294967295u))), clamp(min(abs(4294967295u), 25646u), max(~u_input.d.x, abs(firstTrailingBit(u_input.d.x))), 4294967295u));
    return 20658u;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = func_2(!(!(select(-1603f, -289f, true) != min(-288f, -904f))));
    var var_1 = -(-426f);
    let var_2 = Struct_1(reverseBits(firstLeadingBit(countOneBits(u_input.b))) / -u_input.b, -exp2((1128f - 295f) * -(-1129f)), ~(~abs(28502u)) & dot(vec2<u32>(29683u, var_0), abs(vec2<u32>(var_0, 64303u) >> u_input.d)), 33930u);
    var var_3 = -var_2.b;
    let var_4 = var_2;
    return Struct_1(max(-(-var_2.a ^ (vec3<i32>(var_4.a.x, u_input.e.x, 2147483647i) | vec3<i32>(arg_0.x, 72593i, -2701i))), select(-vec3<i32>(var_2.a.x, var_4.a.x, 38961i) + vec3<i32>(var_4.a.x, -47176i, u_input.b.x), -vec3<i32>(i32(-2147483648), arg_0.x, arg_0.x), any(select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), vec3<bool>(true, true, arg_1.x), false)))), max(-(-278f), var_2.b) * select(-(683f + var_2.b), trunc(var_2.b + var_2.b), all(arg_1)), abs(var_0) + 49071u, countOneBits(~(~(var_4.d << var_2.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b.yx | firstLeadingBit(vec2<i32>(u_input.c, ~u_input.c)), !vec4<bool>(true, !any(global3[u_input.d.x]), i32(-2147483648) <= dot(u_input.b, vec3<i32>(u_input.e.x, -1i, i32(-2147483648))), any(vec2<bool>(false, false))));
    global1 = -var_0.a.x;
    global1 = u_input.c;
    let var_1 = true;
    let var_2 = select(select(!select(vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, true, true), any(global3[u_input.d.x])), vec3<bool>(var_1, any(vec4<bool>(true, var_1, false, false)), true), select(vec3<bool>(false && false, all(vec2<bool>(true, var_1)), !true), !vec3<bool>(true, var_1, true), !(!var_1))), select(select(vec3<bool>(var_0.b == var_0.b, !var_1, -1115f < var_0.b), vec3<bool>(false | false, !var_1, true), vec3<bool>(!false, any(vec3<bool>(true, var_1, var_1)), any(vec2<bool>(var_1, var_1)))), !vec3<bool>(any(vec3<bool>(var_1, var_1, false)), true && var_1, var_1), -(-435f - 550f) != (var_0.b / 1445f)), select(select(select(!vec3<bool>(true, true, var_1), !vec3<bool>(var_1, var_1, var_1), !vec3<bool>(true, true, var_1)), !vec3<bool>(false, true, var_1), select(var_1 && var_1, any(global3[var_0.c]), false)), select(!(!vec3<bool>(var_1, var_1, var_1)), select(select(vec3<bool>(var_1, var_1, true), vec3<bool>(var_1, true, false), vec3<bool>(true, var_1, var_1)), !vec3<bool>(false, var_1, var_1), !var_1), vec3<bool>(any(vec4<bool>(true, true, true, true)), 839f < -474f, false && var_1)), !(!select(vec3<bool>(var_1, false, false), vec3<bool>(false, true, true), var_1))));
    let x = u_input.a;
    s_output = StorageBuffer(23417i, var_0.b, -(select(vec3<f32>(var_0.b, var_0.b, 281f), vec3<f32>(-469f, var_0.b, 144f), vec3<bool>(true, false, var_1)) * vec3<f32>(-754f + var_0.b, 1086f * var_0.b, -var_0.b)));
}


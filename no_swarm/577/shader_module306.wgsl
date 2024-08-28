// {"0:0":[209,205,214,187]}
// Seed: 425107323761316400

struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
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

var<private> global0: array<Struct_3, 14>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: array<u32, 29>;

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>, arg_3: vec3<i32>) -> u32 {
    global0 = array<Struct_3, 14>();
    global2 = array<u32, 29>();
    var var_0 = arg_0.b.b;
    var var_1 = 1i;
    let var_2 = Struct_4(Struct_2(arg_0.a, Struct_1(sign(-(-1000f)), dot(vec3<u32>(4294967295u, global2[arg_0.b.b], arg_0.b.b), vec3<u32>(87275u, 49575u, 4294967295u) * vec3<u32>(1u, 19004u, arg_0.b.b)))), ~dot(vec2<u32>(arg_0.b.b, 67255u) % max(vec2<u32>(u_input.a, 51851u), vec2<u32>(arg_0.b.b, arg_0.b.b)), reverseBits(countOneBits(vec2<u32>(u_input.a, arg_0.b.b)))));
    return ~((firstTrailingBit(dot(vec4<u32>(4294967295u, u_input.a, 4294967295u, var_2.a.b.b), vec4<u32>(96186u, global2[u_input.a], 1u, 0u))) | 63474u) % global2[~(~(~15995u))]);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec4<u32>) -> vec2<u32> {
    global1 = array<Struct_2, 18>();
    global1 = array<Struct_2, 18>();
    global1 = array<Struct_2, 18>();
    let var_0 = all(vec2<bool>(arg_2, !any(vec3<bool>(arg_1.x, true, false))));
    global0 = array<Struct_3, 14>();
    return (min(firstTrailingBit(clamp(vec2<u32>(arg_0, 39027u), arg_3.zw, arg_3.xz)), vec2<u32>(global2[5859u], countOneBits(27000u))) * abs(~(~arg_3.zx))) >> ((arg_3.zx & ~arg_3.xw) ^ ((abs(vec2<u32>(u_input.a, arg_0)) - arg_3.zw) + arg_3.yz));
}

fn func_2(arg_0: u32) -> Struct_2 {
    let var_0 = global2[~reverseBits(global2[~25509u])] ^ u_input.a;
    var var_1 = -((~(vec2<i32>(2147483647i, -3731i) ^ vec2<i32>(-89i, 7655i)) ^ vec2<i32>(-36594i, 9804i ^ -32541i)) / ~(vec2<i32>(17171i, -1i) & (vec2<i32>(0i, 17147i) / vec2<i32>(-29704i, -3497i))));
    var_1 = ((-vec2<i32>(-64383i, 2352i) / clamp(vec2<i32>(-4258i, -25286i) >> vec2<u32>(u_input.a, 0u), vec2<i32>(var_1.x, var_1.x), -vec2<i32>(var_1.x, -37180i))) * firstTrailingBit(~vec2<i32>(var_1.x, -21951i) + countOneBits(vec2<i32>(var_1.x, var_1.x)))) << func_4(func_3(global1[79813u], false, vec2<i32>(-1i, var_1.x), vec3<i32>(-26450i, var_1.x, var_1.x) << vec3<u32>(global2[u_input.a], 0u, 1u)) * u_input.a, vec2<bool>(true, trunc(289f) <= min(702f, 271f)), !select(all(vec2<bool>(false, true)), true, all(vec3<bool>(true, true, false))), ~select(~vec4<u32>(25480u, 4294967295u, var_0, 7027u), vec4<u32>(4294967295u, 0u, arg_0, u_input.a) + vec4<u32>(var_0, 1u, var_0, global2[arg_0]), !vec4<bool>(true, false, true, true)));
    global1 = array<Struct_2, 18>();
    let var_2 = ~2147483647i;
    return global1[80423u];
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_4 {
    var var_0 = clamp(60418u, max(0u, dot(min(abs(vec4<u32>(0u, 4294967295u, arg_0, 35668u)), vec4<u32>(global2[0u], 4294967295u, arg_0, 49539u)), ~vec4<u32>(u_input.a, 0u, 0u, u_input.a) & ~vec4<u32>(1u, arg_1.b.b, 69387u, u_input.a))), firstLeadingBit(abs(arg_0)));
    let var_1 = 151f;
    var var_2 = func_2(~(~(~(~27980u))));
    let var_3 = Struct_4(arg_1, ~var_2.b.b);
    var var_4 = Struct_5(Struct_2(var_2.a, func_2(var_3.a.b.b).b));
    return Struct_4(func_2(0u), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global2[clamp(~(u_input.a ^ reverseBits(global2[0u])), min(global2[u_input.a] << ~global2[u_input.a], ~dot(vec2<u32>(0u, global2[u_input.a]), vec2<u32>(global2[global2[u_input.a]], u_input.a))), 4294967295u)], Struct_2(clamp((vec4<i32>(11386i, 1i, 0i, 13325i) % vec4<i32>(1i, -11395i, -1i, 2147483647i)) % firstTrailingBit(vec4<i32>(9313i, 0i, i32(-2147483648), -20724i)), ~(vec4<i32>(-1i, -14074i, 40501i, 0i) + vec4<i32>(37463i, 0i, 0i, 5406i)), vec4<i32>(0i, -36839i, 9898i, 1i) % reverseBits(vec4<i32>(1i, -1i, 1i, 53415i))), Struct_1(-424f, u_input.a)));
    let var_1 = Struct_3(~0i, func_2(u_input.a), Struct_2(var_0.a.a, func_2(reverseBits(~75841u)).b));
    var var_2 = var_0.a.b.a + var_0.a.b.a;
    let var_3 = Struct_4(var_0.a, var_0.a.b.b);
    let var_4 = var_1;
    let var_5 = func_1(select(34181u * ~4294967295u, var_4.b.b.b, true), Struct_2(~select(var_0.a.a, vec4<i32>(var_4.a, i32(-2147483648), 23413i, var_4.b.a.x), false), Struct_1(-349f, var_0.b))).a.a.ww / vec2<i32>(firstLeadingBit(~firstLeadingBit(var_4.c.a.x)), firstTrailingBit(-26838i) << ~min(35861u, 25948u));
    var var_6 = Struct_3(i32(-2147483648), func_1(32463u, var_0.a).a, var_4.c);
    let var_7 = firstTrailingBit(-1i);
    global2 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(68759i);
}


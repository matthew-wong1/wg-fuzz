// {"0:0":[102,61,187,223,92,169,162,62,75,16,59,102,240,156,0,72,185,186,230,125,30,36,11,17,118,182,110,31,173,114,35,227,213,176,37,21,6,210,142,255,191,124,141,185,246,196,136,213,55,3,207,133,49,31,9,136,240,72,40,131,36,189,161,61]}
// Seed: 17648100777412039328

struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 24>;

fn func_3() -> vec2<bool> {
    global0 = array<Struct_3, 24>();
    var var_0 = -218f;
    var var_1 = reverseBits(109961u);
    global0 = array<Struct_3, 24>();
    var var_2 = dot(-reverseBits(u_input.b.xy), u_input.e.yy) % ~u_input.a.x;
    return select(!select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), any(vec2<bool>(false, true))), any(!vec2<bool>(true, true))), !vec2<bool>(true, true), any(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), false == true), vec2<bool>(false, any(vec2<bool>(false, false))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true))))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> Struct_2 {
    global0 = array<Struct_3, 24>();
    var var_0 = func_3();
    global0 = array<Struct_3, 24>();
    var var_1 = arg_0;
    var var_2 = -arg_2.b.b - abs(-(-(-arg_2.b.a)));
    return Struct_2(Struct_1(floor((1163f * arg_2.a) / arg_2.b.b), 767f / round(-arg_2.c.a.a)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32, arg_3: vec2<i32>) -> vec4<f32> {
    let var_0 = !vec4<bool>(!false, false, all(func_3()), !all(vec4<bool>(true, true, false, true)) == (any(vec4<bool>(false, false, true, true)) & (i32(-2147483648) < 0i)));
    let var_1 = ~(~vec3<i32>(8398i, u_input.a.x, min(u_input.e.x, u_input.b.x) ^ arg_3.x));
    var var_2 = ~dot(arg_1.zx, u_input.d);
    let var_3 = clamp(arg_1.x, abs(abs(u_input.d.x)) / abs(89620u), dot((~vec2<u32>(u_input.d.x, arg_1.x) & u_input.d) << firstLeadingBit(vec2<u32>(u_input.d.x, 4294967295u)), firstLeadingBit(vec2<u32>(select(u_input.d.x, 10641u, true), ~arg_1.x))));
    var var_4 = func_2(var_1.x, 1i, Struct_3(-844f, Struct_1(-111f, arg_2 - 2058f), arg_0)).a;
    return vec4<f32>(step(floor(arg_2), -276f) + arg_0.a.a, max(-arg_2, arg_2), -arg_0.a.a, var_4.a) * -vec4<f32>(-step(-2476f, arg_0.a.b), select(-1000f, arg_2, var_0.x) + -1847f, var_4.a * -882f, 510f);
}

fn func_1(arg_0: bool) -> vec2<f32> {
    let var_0 = u_input.a.x;
    let var_1 = -ceil(-vec4<f32>(1000f, 795f, 549f, -860f) * -vec4<f32>(2068f, -225f, 400f, -224f)) * -(-func_4(func_2(var_0, 12047i, global0[u_input.d.x]), vec4<u32>(13027u, u_input.d.x, 1u, 61393u), 568f * 2476f, u_input.e.yz / vec2<i32>(0i, 0i)));
    var var_2 = func_2(min(~34958i, dot(vec4<i32>(~var_0, 10454i, -var_0, var_0), vec4<i32>(firstTrailingBit(var_0), 0i - var_0, u_input.b.x, abs(u_input.b.x)))), max(-max(1i, 83277i), countOneBits(-10089i) + ~(-51675i + 34874i)), global0[u_input.d.x - firstLeadingBit(dot(abs(vec2<u32>(0u, u_input.d.x)), ~u_input.d))]);
    let var_3 = vec2<f32>(110f, -(var_2.a.a - (var_2.a.a / -var_2.a.b)));
    global0 = array<Struct_3, 24>();
    return vec2<f32>(-max(ceil(var_3.x), var_1.x), round(-940f / var_1.x)) + vec2<f32>(-(func_2(var_0, 0i, Struct_3(377f, Struct_1(445f, 133f), Struct_2(Struct_1(-1750f, var_3.x)))).a.a / -var_3.x), -(-var_3.x - func_4(Struct_2(Struct_1(var_2.a.b, var_2.a.b)), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), 446f, vec2<i32>(u_input.c, var_0)).x));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    global0 = array<Struct_3, 24>();
    var var_0 = func_2(abs(~((30111i / i32(-2147483648)) & (arg_2.x + -29285i))), -firstTrailingBit(~arg_2.x), Struct_3(arg_0.x, func_2(countOneBits(firstLeadingBit(arg_2.x)), -54265i ^ max(u_input.e.x, u_input.c), Struct_3(arg_0.x, func_2(u_input.b.x, 64849i, Struct_3(arg_0.x, Struct_1(arg_0.x, -830f), Struct_2(Struct_1(1089f, arg_0.x)))).a, Struct_2(Struct_1(arg_0.x, arg_0.x)))).a, func_2(-16270i, -dot(u_input.b, vec4<i32>(u_input.a.x, arg_2.x, u_input.a.x, arg_2.x)), Struct_3(-(-106f), Struct_1(-748f, 340f), func_2(31327i, arg_2.x, Struct_3(arg_0.x, Struct_1(arg_0.x, 743f), Struct_2(Struct_1(arg_0.x, 852f))))))));
    let var_1 = true;
    let var_2 = -vec3<i32>(select(u_input.e.x, -19874i, 29999u != arg_1.x) - 0i, -firstLeadingBit(firstTrailingBit(arg_2.x)), arg_2.x);
    let var_3 = func_2(i32(-2147483648) + (~(0i % -4899i) - -1i), reverseBits(var_2.x), global0[0u]).a;
    return Struct_1(max(step(-1000f + var_0.a.b, func_4(Struct_2(Struct_1(arg_0.x, 1831f)), arg_1, -1681f, -u_input.e.yz).x), -(exp2(1505f) - (507f * -1410f))), floor(377f + ((-415f - arg_0.x) + -var_0.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec2<i32>(~abs(0i), 2147483647i);
    var var_1 = Struct_1(642f, -((step(525f, -187f) + (-1000f + -330f)) + (1513f * max(655f, -677f))));
    var_1 = func_5(max(vec2<f32>(-(-416f), var_1.a), min(vec2<f32>(var_1.b, -1401f) * vec2<f32>(1000f, var_1.a), vec2<f32>(-241f, 824f)) - (abs(vec2<f32>(-646f, var_1.b)) + func_1(false))), ~(((vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 47031u) * vec4<u32>(9774u, u_input.d.x, 32374u, u_input.d.x)) / ~vec4<u32>(9226u, u_input.d.x, 60443u, 4294967295u)) * select(select(vec4<u32>(u_input.d.x, u_input.d.x, 25537u, 87693u), vec4<u32>(1u, 0u, 0u, 4405u), true), vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x), vec4<bool>(true, false, true, true))), vec3<i32>(6192i, max(-(-53427i), ~(-4058i)), 17239i), 4294967295u < dot(vec3<u32>(~u_input.d.x, abs(0u), ~u_input.d.x), select(vec3<u32>(4294967295u, 78132u, u_input.d.x) >> vec3<u32>(u_input.d.x, 1u, 48320u), vec3<u32>(42201u, u_input.d.x, u_input.d.x), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))));
    global0 = array<Struct_3, 24>();
    let var_2 = sign(-(-vec2<f32>(func_2(20713i, u_input.b.x, global0[u_input.d.x]).a.b, -var_1.a)));
    var var_3 = Struct_3(var_2.x, Struct_1(func_4(Struct_2(Struct_1(var_1.b, 1087f)), ~vec4<u32>(u_input.d.x, 15563u, 4294967295u, 236u), 749f - -1043f, vec2<i32>(i32(-2147483648), u_input.b.x) * vec2<i32>(u_input.a.x, var_0.x)).x - (var_1.a / (148f * var_1.a)), exp2(-func_2(var_0.x, 8506i, global0[u_input.d.x]).a.a)), Struct_2(Struct_1(var_1.b, max(-1000f, round(395f)))));
    var var_4 = Struct_1(func_5(vec2<f32>(-723f, var_1.a), reverseBits(select(vec4<u32>(35788u, 4294967295u, 14833u, u_input.d.x), vec4<u32>(18851u, u_input.d.x, 0u, u_input.d.x), true)) << ~firstTrailingBit(vec4<u32>(u_input.d.x, 56121u, 1u, 1u)), u_input.b.zzw, any(vec3<bool>(false, false, false)) || !(!false)).b, -(-(-659f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~(u_input.d.x * u_input.d.x)), u_input.d.x), vec4<u32>((135742u * dot(vec4<u32>(u_input.d.x, u_input.d.x, 92738u, 11688u), vec4<u32>(u_input.d.x, u_input.d.x, 1u, 2409u))) & ~select(54259u, 4294967295u, true), u_input.d.x, min(61974u, u_input.d.x), 34032u), func_4(var_3.c, vec4<u32>(u_input.d.x, firstLeadingBit(4294967295u), u_input.d.x - 52153u, abs(u_input.d.x)) * min(vec4<u32>(48057u, u_input.d.x, u_input.d.x, 47112u) >> vec4<u32>(668u, 44608u, u_input.d.x, 0u), abs(vec4<u32>(0u, u_input.d.x, 4294967295u, u_input.d.x))), var_1.b, u_input.b.zx >> ~countOneBits(u_input.d)).wz, 1u);
}


// {"0:0":[146,126,160,166,81,114,237,2,99,136,41,51,139,192,225,212,125,106,26,142,227,195,2,98,36,190,102,219,183,74,87,63,205,245,58,179,0,86,121,107,154,241,87,52,93,170,44,138]}
// Seed: 9247924404856249273

struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 75536u;

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(vec4<u32>(~abs(~u_input.b.x), u_input.b.x << u_input.b.x, ~u_input.b.x, 0u), Struct_1(select(min(-vec3<f32>(1157f, 559f, 380f), vec3<f32>(-342f, -582f, 578f) / vec3<f32>(487f, -963f, -1000f)), abs(trunc(vec3<f32>(809f, 2387f, -813f))), vec3<bool>(any(vec3<bool>(false, true, false)), true, any(vec4<bool>(false, true, true, true)))), firstLeadingBit(min(u_input.c.x % -9173i, 21354i))), u_input.c);
    global0 = ~((4294967295u ^ ~27243u) % ~380u);
    let var_1 = Struct_3(abs(firstTrailingBit(vec3<u32>(var_0.a.x, ~104392u, ~4294967295u))), var_0.b, !true, -trunc(1250f - (2298f - var_0.b.a.x)), 6701i);
    var var_2 = vec3<i32>(min(~dot(select(vec3<i32>(var_0.c.x, u_input.d.x, 16530i), vec3<i32>(9941i, var_0.c.x, 2147483647i), vec3<bool>(true, false, true)), select(var_0.c.xyy, var_0.c.zzw, vec3<bool>(false, var_1.c, false))), dot(countOneBits(select(vec3<i32>(var_0.c.x, var_1.e, var_0.b.b), vec3<i32>(24364i, 0i, 8995i), true)), vec3<i32>(-25595i, i32(-2147483648), var_0.b.b << var_1.a.x))), 2147483647i, abs(var_0.c.x));
    global0 = clamp(~(~(var_1.a.x - ~var_1.a.x)), var_1.a.x, var_0.a.x);
    return ~firstLeadingBit(~vec4<u32>(0u, 0u, reverseBits(var_1.a.x), 0u));
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_2(firstTrailingBit(func_3() / vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)) / ~vec4<u32>(dot(vec4<u32>(u_input.b.x, 5259u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 14622u, u_input.b.x)), 1u, ~40444u, ~17437u), Struct_1(-(-(vec3<f32>(-1138f, -1000f, -573f) + vec3<f32>(452f, 434f, 838f))), countOneBits(u_input.d.x)), -select(vec4<i32>(u_input.a, u_input.a << 77307u, 10612i, u_input.c.x & 19712i), -u_input.c, !(false || false)));
    return !select(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true), vec4<bool>(false, true, true, false), true), vec4<bool>(any(vec2<bool>(false, true)), 2147483647i == -14313i, !any(vec2<bool>(true, true)), !(false & true)), select(!vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), any(vec3<bool>(true, true, true))), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = !vec2<bool>(false, 53864u == 29025u);
    var var_1 = select(u_input.c, u_input.c, !func_2());
    let var_2 = ~countOneBits(~(vec3<u32>(1u, u_input.b.x, u_input.b.x) / vec3<u32>(1u, u_input.b.x, u_input.b.x)) & clamp(~vec3<u32>(66820u, u_input.b.x, 3357u), ~vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)));
    global0 = 1u;
    return Struct_2(vec4<u32>(4294967295u, (min(25354u, 0u) / abs(6006u)) / ~(~var_2.x), max(~(4294967295u >> u_input.b.x), 1u), abs(min(1u, 0u % 4294967295u))), Struct_1(-arg_1, dot((vec3<i32>(u_input.c.x, 0i, 1i) >> vec3<u32>(0u, var_2.x, 1u)) - select(u_input.d, vec3<i32>(u_input.d.x, arg_0.x, i32(-2147483648)), var_0.x), vec3<i32>(var_1.x, u_input.a, arg_0.x) - ~var_1.wwy)), u_input.c | ((-vec4<i32>(22157i, 1i, i32(-2147483648), var_1.x) - clamp(vec4<i32>(var_1.x, u_input.d.x, 1i, u_input.c.x), u_input.c, vec4<i32>(74686i, 18806i, -1i, -21368i))) & ~abs(vec4<i32>(var_1.x, var_1.x, u_input.a, i32(-2147483648)))));
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = (((4294967295u % u_input.b.x) >> ~13722u) & ~(~u_input.b.x ^ select(49923u, u_input.b.x, true))) % abs(reverseBits(func_1(vec2<i32>(u_input.c.x, u_input.d.x), arg_0.b.a).a.x) * u_input.b.x);
    global0 = ~14885u;
    let var_1 = -(-vec3<f32>(505f, arg_0.b.a.x, -(-286f)));
    let var_2 = select(!func_2().yww, !(!func_2().zzw), true & true);
    var var_3 = Struct_3(arg_0.a.xyy, Struct_1(vec3<f32>(-816f * -1424f, -1281f + var_1.x, sign(var_1.x)) / ((vec3<f32>(1159f, 454f, arg_0.b.a.x) * arg_0.b.a) / min(vec3<f32>(-992f, arg_0.b.a.x, arg_0.b.a.x), var_1)), arg_0.c.x), true, -((-var_1.x * arg_0.b.a.x) * (min(579f, 1573f) * arg_0.b.a.x)), -(~arg_0.c.x));
    return Struct_3(countOneBits(vec3<u32>((arg_0.a.x & arg_0.a.x) << func_1(arg_0.c.yy, vec3<f32>(var_1.x, 1331f, -395f)).a.x, 4294967295u, var_3.a.x)), var_3.b, 680f < (-(-var_3.b.a.x) - step(1887f - arg_0.b.a.x, var_3.d)), var_3.d, clamp(~1i, u_input.c.x, select(var_3.e, dot(-arg_0.c.wwx, vec3<i32>(40203i, var_3.b.b, u_input.c.x)), var_3.c)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> StorageBuffer {
    global0 = u_input.b.x;
    let var_0 = arg_1.a.x;
    let var_1 = arg_0;
    let var_2 = ~(~((arg_0.a.x * ~var_1.a.x) << ~(38440u - 96731u)));
    global0 = ~51680u;
    return StorageBuffer(abs((vec4<u32>(1u, 21487u, 0u, arg_0.a.x) / vec4<u32>(46758u, arg_0.a.x, 16984u, var_2)) & ~vec4<u32>(1u, arg_0.a.x, u_input.b.x, 1u)) | min(vec4<u32>(var_2, var_2, arg_0.a.x, arg_0.a.x) / select(vec4<u32>(u_input.b.x, arg_0.a.x, 6965u, 74408u), vec4<u32>(arg_0.a.x, 114032u, u_input.b.x, 1u), vec4<bool>(false, true, true, true)), vec4<u32>(var_2, 1u, 6700u, 4294967295u) << (vec4<u32>(arg_0.a.x, var_2, 1u, var_2) >> vec4<u32>(4294967295u, 1u, u_input.b.x, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit((u_input.b.x / u_input.b.x) << 12110u) << u_input.b.x;
    let x = u_input.a;
    s_output = func_5(func_4(func_1(u_input.c.wx, vec3<f32>(-(-299f), -973f, -(-501f)))), Struct_1(-(vec3<f32>(-306f, -1125f, 757f) * vec3<f32>(-720f, 255f, 1325f)) * max(-vec3<f32>(-452f, -1497f, 752f), -vec3<f32>(-752f, -1000f, 642f)), -u_input.a));
}


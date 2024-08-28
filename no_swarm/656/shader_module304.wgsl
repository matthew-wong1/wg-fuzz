// {"0:0":[36,149,204,251]}
// Seed: 1010285159457084649

struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<bool>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
    d: vec3<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: vec2<u32>;

var<private> global2: Struct_2;

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_4, arg_3: Struct_4) -> bool {
    var var_0 = arg_2.e;
    var_0 = arg_2.e;
    global1 = vec2<u32>(~35878u, ~(~dot(vec4<u32>(arg_2.a.b.d.x, 0u, global2.a.c.x, global2.b.d.x) << vec4<u32>(u_input.a, global2.a.d.x, 16354u, 24877u), vec4<u32>(global1.x, arg_1, 55865u, 0u) * vec4<u32>(u_input.a, 35507u, 48586u, u_input.a))));
    let var_1 = Struct_4(arg_3.a, global2.a.b, all(arg_3.e.c), select(~arg_2.d, arg_3.d, arg_2.c), Struct_3(false, arg_3.e.e.x + arg_2.d.x, select(!arg_3.e.c, var_0.c, vec3<bool>(false, arg_3.a.c.x, any(vec3<bool>(false, false, false)))), arg_3.e.d, -abs(min(var_0.e, vec2<i32>(i32(-2147483648), -23064i)))));
    var var_2 = arg_3;
    return arg_3.c;
}

fn func_2() -> u32 {
    var var_0 = Struct_3(true, abs(-1i), select(select(!(!vec3<bool>(true, true, global2.c.x)), select(vec3<bool>(true, global0[1u], global0[12693u]), !vec3<bool>(global0[71465u], global0[global1.x], false), !vec3<bool>(global2.c.x, true, global0[u_input.a])), global2.c.x), vec3<bool>(func_3(24359i | 0i, 4294967295u, Struct_4(Struct_2(Struct_1(global2.b.d.x, vec3<f32>(577f, -1000f, global2.a.b.x), vec2<u32>(79405u, u_input.a), vec2<u32>(31718u, 0u)), Struct_1(global2.a.d.x, vec3<f32>(-1296f, 208f, 744f), global2.b.d, vec2<u32>(global1.x, global2.b.d.x)), global2.c, 0u), vec3<f32>(global2.a.b.x, 754f, global2.b.b.x), false, vec3<i32>(1i, -1i, 78378i), Struct_3(true, 2147483647i, vec3<bool>(global0[0u], false, false), vec2<i32>(-1i, -1i), vec2<i32>(1i, -18931i))), Struct_4(Struct_2(global2.b, global2.a, global2.c, u_input.a), global2.b.b, global2.c.x, vec3<i32>(-1i, 0i, 1i), Struct_3(false, 1i, vec3<bool>(true, true, global2.c.x), vec2<i32>(1i, 2147483647i), vec2<i32>(3628i, 56802i)))), any(!vec3<bool>(global0[4294967295u], true, global2.c.x)), global2.c.x), vec3<bool>(!global0[~u_input.a], all(vec3<bool>(global0[0u], true, global0[global2.d])), u_input.a < u_input.a)), select(select(~(vec2<i32>(-1i, 25933i) / vec2<i32>(1i, -30156i)), (vec2<i32>(0i, 10007i) >> global2.a.c) - vec2<i32>(-40878i, -27478i), all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, global0[global2.d], global0[global1.x]), global2.c.x))), reverseBits(vec2<i32>(-(-39272i), -1i)), select(global2.c, !(!global2.c), global0[global1.x])), (vec2<i32>(firstLeadingBit(-1i), 1i) ^ ((vec2<i32>(9668i, 10728i) & vec2<i32>(1i, -22516i)) ^ vec2<i32>(2147483647i, -37750i))) ^ ~min(vec2<i32>(i32(-2147483648), 3131i), -vec2<i32>(2147483647i, -23758i)));
    var var_1 = Struct_4(Struct_2(Struct_1((global1.x * 0u) - ~u_input.a, global2.a.b, global2.b.c + vec2<u32>(0u, 1774u), abs(global2.b.c)), Struct_1(~global2.b.d.x * global2.b.c.x, global2.a.b - sign(vec3<f32>(global2.b.b.x, global2.a.b.x, 1496f)), ~select(global2.a.c, vec2<u32>(global2.a.c.x, global2.b.c.x), vec2<bool>(global2.c.x, false)), (vec2<u32>(1u, 100182u) ^ vec2<u32>(33020u, 39395u)) * vec2<u32>(100141u, 0u)), var_0.c.zz, global2.b.a), global2.a.b, 11190i == var_0.e.x, -(abs(vec3<i32>(-1i, var_0.e.x, 72176i)) & ~vec3<i32>(var_0.d.x, 0i, i32(-2147483648))) ^ vec3<i32>(min(abs(-26137i), ~(-14009i)), -1i * -1i, reverseBits(~var_0.d.x)), Struct_3(all(!(!var_0.c)), -var_0.b, !vec3<bool>(907f < -1579f, global0[~global1.x], var_0.a), vec2<i32>(24407i ^ dot(vec4<i32>(-1i, var_0.b, var_0.d.x, var_0.b), vec4<i32>(-10058i, var_0.e.x, var_0.d.x, var_0.d.x)), ~countOneBits(var_0.b)), vec2<i32>(abs(-30507i), -(35809i - 0i))));
    global0 = array<bool, 20>();
    var_0 = Struct_3(false, ((clamp(991i, var_0.e.x, var_1.e.b) * -17470i) % var_1.e.e.x) / (2147483647i * (var_0.b ^ dot(vec4<i32>(var_0.e.x, var_0.d.x, i32(-2147483648), var_1.e.e.x), vec4<i32>(var_1.d.x, 34102i, 56206i, var_0.e.x)))), !vec3<bool>(var_0.c.x, var_1.a.c.x || false, ~global1.x > firstLeadingBit(57195u)), ~vec2<i32>(select(var_0.b, -11942i << 0u, global1.x > global1.x), firstLeadingBit(var_1.e.b)), vec2<i32>(16416i, -1i * -1493i) | vec2<i32>(abs(firstLeadingBit(44870i)), countOneBits(23006i)));
    global2 = var_1.a;
    return (4294967295u + u_input.a) - ~4294967295u;
}

fn func_1() -> bool {
    var var_0 = -(vec3<f32>(-406f, global2.b.b.x, global2.b.b.x) / vec3<f32>((1000f / global2.a.b.x) / -114f, -(-global2.b.b.x), -(-global2.a.b.x)));
    let var_1 = 0i;
    var var_2 = Struct_1(func_2(), global2.b.b, abs(vec2<u32>(~global2.a.c.x, 4294967295u)), (global2.a.d ^ (~global2.a.d & firstLeadingBit(global2.b.d))) | vec2<u32>(u_input.a, 0u));
    var var_3 = Struct_2(Struct_1(countOneBits(0u), var_2.b, vec2<u32>(37127u, abs(global1.x)), global2.b.c), Struct_1(var_2.a, var_2.b, abs(firstTrailingBit(vec2<u32>(1u, 4294967295u)) - var_2.c), ~(~clamp(vec2<u32>(u_input.a, global1.x), global2.b.d, var_2.d))), select(vec2<bool>(global2.c.x, true), vec2<bool>(any(select(global2.c, global2.c, global0[global2.d])), global0[4294967295u * 44022u] && any(global2.c)), !global2.c.x), 0u);
    let var_4 = u_input.a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(func_1(), false, func_1(), global0[max(~firstTrailingBit(~u_input.a), global1.x ^ u_input.a)]);
    let var_1 = global2.a;
    var var_2 = 109343u;
    let var_3 = true;
    global2 = Struct_2(global2.a, Struct_1(var_1.c.x, -min(-vec3<f32>(-1102f, var_1.b.x, var_1.b.x), global2.b.b), max(~(vec2<u32>(0u, 21498u) ^ vec2<u32>(global2.a.d.x, var_1.a)), var_1.d), global2.b.d * firstLeadingBit(~vec2<u32>(var_1.d.x, 1u))), !select(select(!var_0.xx, select(vec2<bool>(var_3, false), vec2<bool>(global0[19063u], true), false), false), vec2<bool>(select(global2.c.x, true, false), false), !(1i > -1i)), u_input.a);
    var var_4 = firstTrailingBit(min(vec2<i32>(-1i, ~(i32(-2147483648))), firstLeadingBit(vec2<i32>(2147483647i, 1321i) | vec2<i32>(-1i, 13269i)))) - ((-select(vec2<i32>(20553i, -1i), vec2<i32>(-78958i, -27171i), var_0.yx) & ~(vec2<i32>(1i, -52929i) + vec2<i32>(-5989i, -10916i))) * max(max(-vec2<i32>(1i, 0i), -vec2<i32>(i32(-2147483648), i32(-2147483648))), vec2<i32>(~(-1i), -28257i << global2.a.a)));
    var_4 = vec2<i32>(dot(~vec3<i32>(var_4.x & 0i, -1i, -5946i), -(min(vec3<i32>(-21320i, var_4.x, -22376i), vec3<i32>(var_4.x, var_4.x, var_4.x)) >> clamp(vec3<u32>(global1.x, global1.x, u_input.a), vec3<u32>(global1.x, u_input.a, 35879u), vec3<u32>(4294967295u, global2.a.d.x, u_input.a)))), dot(vec4<i32>(var_4.x, i32(-2147483648) | min(-23412i, 7674i), firstTrailingBit(dot(vec3<i32>(1i, -1i, var_4.x), vec3<i32>(var_4.x, i32(-2147483648), 2212i))), -62643i), -(vec4<i32>(var_4.x, 16591i, var_4.x, 2147483647i) % vec4<i32>(var_4.x, var_4.x, var_4.x, var_4.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~firstLeadingBit(global1.x)), ~(~vec2<u32>(38559u, 4370u) << select(countOneBits(vec2<u32>(var_1.c.x, global1.x)), ~vec2<u32>(var_1.a, global2.b.a), !global2.c.x)));
}


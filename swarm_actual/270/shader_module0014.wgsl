// {"0:0":[224,71,107,16,46,130,153,220,13,159,29,142,153,222,239,248]}
// Seed: 3894231405088239384

struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(true, true, false, true, false, false, false, true, true, true, false, true, false, false, true, true, false, false, false, false);

var<private> global1: vec3<i32> = vec3<i32>(-37711i, -64315i, -1i);

fn func_3() -> i32 {
    var var_0 = select(!select(!vec3<bool>(global0[u_input.a.x], global0[u_input.a.x], true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, global0[0u], global0[1u]), vec3<bool>(true, true, false)), vec3<bool>(global0[304u], global0[u_input.a.x], false), true), !all(vec4<bool>(true, global0[4294967295u], false, global0[13405u]))), select(!select(select(vec3<bool>(true, false, global0[11692u]), vec3<bool>(true, global0[u_input.a.x], false), vec3<bool>(global0[0u], global0[1u], global0[0u])), select(vec3<bool>(global0[28145u], global0[0u], global0[38836u]), vec3<bool>(global0[u_input.a.x], global0[u_input.a.x], true), vec3<bool>(false, global0[1u], true)), false & global0[u_input.a.x]), !select(!vec3<bool>(global0[81549u], global0[u_input.a.x], global0[u_input.a.x]), vec3<bool>(global0[u_input.a.x], false, true), global0[~1u]), vec3<bool>(-2147483647i <= (global1.x * global1.x), global0[dot(u_input.a.zz, vec2<u32>(1u, u_input.a.x)) / firstTrailingBit(u_input.a.x)], !(global1.x > 1i))), vec3<bool>(!(~1u < 71522u), !true && all(!vec2<bool>(true, false)), !(!true) != any(vec2<bool>(false, true))));
    var var_1 = Struct_1(select(!select(select(vec3<bool>(true, false, global0[55159u]), vec3<bool>(true, false, false), vec3<bool>(true, true, var_0.x)), select(vec3<bool>(true, var_0.x, global0[57102u]), vec3<bool>(global0[u_input.a.x], var_0.x, false), vec3<bool>(true, true, global0[52132u])), vec3<bool>(global0[4294967295u], var_0.x, true)), !select(vec3<bool>(false, var_0.x, false), !vec3<bool>(false, global0[u_input.a.x], false), all(vec2<bool>(true, var_0.x))), select(vec3<bool>(global0[u_input.a.x & 47542u], global1.x == -840i, !global0[u_input.a.x]), !vec3<bool>(true, var_0.x, false), vec3<bool>(false, false & true, var_0.x))), 17381u, vec3<u32>(u_input.a.x, abs(u_input.a.x >> ~u_input.a.x), min(~min(u_input.a.x, u_input.a.x), u_input.a.x)), !(!all(!vec4<bool>(var_0.x, var_0.x, false, var_0.x))));
    let var_2 = -(~select(abs(vec3<i32>(i32(-2147483648), 0i, 14348i)), vec3<i32>(-1i, 12502i, global1.x) << var_1.c, !vec3<bool>(true, false, global0[10603u]))) & -min(~select(vec3<i32>(global1.x, global1.x, i32(-2147483648)), vec3<i32>(1i, 9753i, 49402i), var_1.a), reverseBits(select(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(10810i, 5141i, global1.x), var_1.a)));
    global0 = array<bool, 20>();
    var var_3 = Struct_1(select(vec3<bool>(all(vec3<bool>(false, true, var_0.x)), all(vec3<bool>(true, var_0.x, global0[var_1.c.x])), any(vec2<bool>(var_0.x, var_1.d))), !vec3<bool>(false, !false, all(vec4<bool>(false, false, true, var_0.x))), select(var_1.a, !(!vec3<bool>(var_1.d, var_0.x, false)), var_0.x)), ~u_input.a.x, select(u_input.a, abs(u_input.a) | ((u_input.a - u_input.a) ^ vec3<u32>(u_input.a.x, 1u, var_1.b)), vec3<bool>((-306f + 391f) > -(-1504f), true, false)), !(firstLeadingBit(dot(vec2<i32>(global1.x, global1.x), vec2<i32>(1i, 0i))) == (reverseBits(global1.x) % 2147483647i)));
    return 2147483647i << abs(~1u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>) -> bool {
    global1 = abs(vec3<i32>(-func_3() >> 1u, global1.x << ~u_input.a.x, ((1i + global1.x) | global1.x) % -234i));
    global1 = vec3<i32>(53141i, (0i + 31381i) ^ ((~global1.x >> clamp(u_input.a.x, u_input.a.x, u_input.a.x)) - global1.x), dot(countOneBits(min(-vec4<i32>(global1.x, 39790i, global1.x, global1.x), -vec4<i32>(global1.x, global1.x, -1i, -27718i))), vec4<i32>(-(~(i32(-2147483648))), -abs(-62627i), ~global1.x, global1.x)));
    global0 = array<bool, 20>();
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(vec3<bool>(arg_1.x, any(arg_1) == global0[4294967295u], arg_1.x), 58043u, u_input.a, true);
    return var_1.d;
}

fn func_1() -> f32 {
    global0 = array<bool, 20>();
    let var_0 = Struct_1(select(select(vec3<bool>(any(vec2<bool>(global0[u_input.a.x], true)), !false, false), vec3<bool>(global0[0u] | false, !false, 4294967295u < u_input.a.x), select(vec3<bool>(global0[39633u], true, global0[u_input.a.x]), !vec3<bool>(true, global0[0u], global0[u_input.a.x]), global0[abs(u_input.a.x)])), !select(!vec3<bool>(global0[u_input.a.x], global0[u_input.a.x], true), !vec3<bool>(global0[0u], false, false), !false), countOneBits(2147483647i) <= ~global1.x), ~u_input.a.x, ~vec3<u32>(1u, u_input.a.x, max(u_input.a.x | u_input.a.x, ~u_input.a.x)), (all(!vec2<bool>(global0[4294967295u], global0[u_input.a.x])) && func_2(vec2<f32>(384f, -767f), select(vec3<bool>(global0[4294967295u], true, global0[51081u]), vec3<bool>(false, global0[u_input.a.x], true), global0[1u]))) | true);
    var var_1 = var_0;
    let var_2 = -(-(-sign(-vec3<f32>(358f, 2621f, -1802f))));
    let var_3 = select(global0[~(~var_1.c.x ^ firstTrailingBit(65312u))], all(select(!(!var_1.a), !(!vec3<bool>(true, var_0.d, true)), vec3<bool>(false, any(vec4<bool>(true, false, var_0.a.x, var_1.d)), false))), !var_0.a.x);
    return -trunc(-673f / -var_2.x) * -624f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!all(select(vec3<bool>(true, false, true), vec3<bool>(false, global0[u_input.a.x], true), vec3<bool>(global0[u_input.a.x], global0[u_input.a.x], false))), ~(1u ^ u_input.a.x) < ~dot(vec3<u32>(1u, 4294967295u, u_input.a.x), vec3<u32>(37626u, u_input.a.x, u_input.a.x)), true), ~4294967295u <= 1u, true);
    var var_1 = ~u_input.a.x;
    let var_2 = var_0;
    var_1 = ~(u_input.a.x % u_input.a.x);
    var var_3 = vec3<f32>(select(-(-2086f * func_1()), select(trunc(-411f), -1324f, !(!false)), global0[clamp(min(~0u, u_input.a.x), u_input.a.x, dot(~vec3<u32>(u_input.a.x, u_input.a.x, 1u), firstLeadingBit(vec3<u32>(71033u, 34234u, 26481u))))]), -step(123f + -1000f, ceil(1827f)) / (-(-(-422f)) / -(-(-257f))), trunc(-(192f / -3106f) - -(-1018f)));
    var_1 = clamp(u_input.a.x, 0u, u_input.a.x);
    let var_4 = Struct_1(vec3<bool>(any(vec2<bool>(!false, func_2(vec2<f32>(-321f, var_3.x), vec3<bool>(false, var_2, false)))), !false, global0[u_input.a.x]), u_input.a.x ^ (1u + 0u), ~(~countOneBits(clamp(vec3<u32>(4337u, 1u, 18005u), vec3<u32>(4757u, u_input.a.x, 5013u), u_input.a))), !var_2 & all(!vec2<bool>(var_0, global0[0u])));
    var_1 = u_input.a.x ^ countOneBits(67976u);
    var_1 = 604u;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(reverseBits(global1.x)), ~var_4.c, var_3.x, vec2<u32>(4294967295u, 26783u));
}


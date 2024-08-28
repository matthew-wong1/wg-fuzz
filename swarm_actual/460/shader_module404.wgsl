// {"0:0":[179,191,232,16,175,30,169,84,202,105,112,145,211,29,173,48]}
// Seed: 6602894727108105418

struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 27> = array<u32, 27>(80005u, 4294967295u, 0u, 1u, 66405u, 1u, 86744u, 92181u, 4294967295u, 3442u, 10346u, 1u, 4294967295u, 4294967295u, 34247u, 1996u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 38566u, 1u, 20876u, 41662u, 53533u, 14853u, 4294967295u);

var<private> global2: bool = false;

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    global1 = array<u32, 27>();
    return abs(-(-257f));
}

fn func_2() -> i32 {
    var var_0 = -973f;
    var_0 = max(-1000f, (-(-161f) + func_3(Struct_2(7388u), firstTrailingBit(vec4<u32>(global1[global1[0u]], 4294967295u, global1[global1[4294967295u]], 4311u)))) - -534f);
    let var_1 = -firstLeadingBit(countOneBits(-(u_input.a.yzz * vec3<i32>(u_input.a.x, 2147483647i, 2147483647i))));
    var var_2 = reverseBits(abs(vec4<u32>(~global1[global1[global1[global1[global1[0u]]]]], 2573u, max(global1[8744u], 4294967295u), min(global1[global1[41451u]], 0u)))) ^ (firstLeadingBit(~vec4<u32>(global1[1u], global1[30258u], 4294967295u, global1[global1[51285u]])) * (((vec4<u32>(4294967295u, global1[0u], global1[1u], 5494u) << vec4<u32>(global1[global1[0u]], 4294967295u, global1[global1[4294967295u]], global1[global1[global1[1u]]])) / (vec4<u32>(global1[global1[8266u]], global1[global1[global1[global1[0u]]]], 1u, 59669u) * vec4<u32>(global1[0u], global1[1u], 1u, global1[25u]))) + (~vec4<u32>(global1[global1[0u]], global1[4294967295u], global1[13499u], 12216u) + ~vec4<u32>(51814u, global1[20288u], global1[5271u], 4294967295u))));
    var var_3 = round(floor(abs(-652f / sign(-614f))));
    return max(~(~(~1i)) - var_1.x, ~0i);
}

fn func_1() -> vec4<f32> {
    var var_0 = 4396i;
    var var_1 = -(-(-(-(-397f) * (538f * -372f))));
    var var_2 = abs(reverseBits(vec4<u32>(1u, 19440u, global1[4294967295u], 16256u) | vec4<u32>(global1[1420u], global1[global1[0u]], 0u, 675u)) * (select(vec4<u32>(46738u, 1u, global1[global1[1u]], global1[global1[global1[45343u]]]), vec4<u32>(4294967295u, global1[global1[global1[global1[4294967295u]]]], global1[global1[global1[global1[112234u]]]], global1[global1[global1[global1[4294967295u]]]]), true) * vec4<u32>(global1[global1[global1[0u]]], 4294967295u, 34166u, 7765u))) << vec4<u32>(global1[firstLeadingBit(0u)], firstTrailingBit(24382u) ^ ~(global1[global1[26349u]] * global1[global1[4294967295u]]), global1[select(global1[~(~4294967295u)], 0u, true)], ~global1[countOneBits(~global1[global1[global1[6260u]]])]);
    let var_3 = vec4<i32>(abs(func_2()), ((2147483647i << 1u) << ~global1[30258u]) | u_input.a.x, ~1i, -24267i) - u_input.a;
    var_1 = floor(-450f) * round(-(536f - 625f) - (-144f + -844f));
    return sign(step(-(round(vec4<f32>(-644f, -352f, 667f, -896f)) / vec4<f32>(859f, -1202f, 540f, 284f)), trunc(vec4<f32>(-1011f, 1385f, 1380f, 489f) + vec4<f32>(277f, 2132f, -672f, -1261f)) / ((vec4<f32>(296f, -406f, -615f, 671f) / vec4<f32>(-302f, 543f, 1000f, 762f)) + -vec4<f32>(-1000f, 450f, 471f, -1042f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = ~firstTrailingBit(dot(~vec4<u32>(global1[global1[1u]], 1u, global1[69255u], 1u) >> (vec4<u32>(0u, global1[global1[41625u]], 0u, 4294967295u) ^ vec4<u32>(86460u, 0u, global1[30454u], 0u)), ~vec4<u32>(global1[0u], global1[0u], global1[global1[global1[14666u]]], global1[global1[global1[61219u]]]) - (vec4<u32>(5094u, global1[1u], global1[0u], global1[global1[28617u]]) % vec4<u32>(global1[34352u], 4444u, 29621u, global1[1u]))));
    var var_2 = Struct_1(trunc(max(ceil(vec4<f32>(336f, 1790f, 788f, 201f)) / -vec4<f32>(-699f, -1172f, -331f, -1000f), func_1() * vec4<f32>(-474f, 1000f, -600f, 1000f))), vec3<u32>(dot(~vec3<u32>(global1[global1[global1[4294967295u]]], 0u, global1[global1[1u]]), ~vec3<u32>(global1[37773u], 1u, 4294967295u)) - (countOneBits(var_1) ^ var_1), clamp(4294967295u, global1[global1[9505u] / 0u], ~global1[var_1]) << ~firstLeadingBit(34476u), select(global1[min(var_1, 35433u) - reverseBits(4294967295u)], ~(~38272u), !all(vec4<bool>(true, true, true, true)))));
    var_0 = any(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), false), !(!vec2<bool>(true, false)), select(!vec2<bool>(false, false), !vec2<bool>(true, false), true))) | (-1230f > (sign(-108f) - 114f));
    let var_3 = false;
    var var_4 = u_input.a.xzz % vec3<i32>(u_input.a.x, i32(-2147483648), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(select(dot(u_input.a.zyx, vec3<i32>(u_input.a.x, u_input.a.x, -40259i)), ~var_4.x, true), firstLeadingBit(32205i) | -16356i, reverseBits(~u_input.a.x))));
}


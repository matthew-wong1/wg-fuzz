struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 61293u);

var<private> global1: array<f32, 23> = array<f32, 23>(-1000f, 793f, -283f, -2132f, -1346f, -2088f, 605f, -566f, 529f, 372f, -273f, 1165f, -186f, -513f, -450f, 1000f, -796f, 291f, -1414f, -617f, -1772f, 1000f, -1183f);

var<private> global2: array<i32, 24> = array<i32, 24>(-4720i, -1i, 1i, 2147483647i, -5005i, -1i, i32(-2147483648), 75626i, 0i, -15271i, 1i, -10143i, 99477i, 7484i, 28611i, -1i, 13945i, 2147483647i, i32(-2147483648), -1i, i32(-2147483648), -47330i, -2315i, 51989i);

var<private> global3: array<u32, 9>;

var<private> global4: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<u32>(1u, 90024u, 22708u), vec3<f32>(1015f, 664f, 1560f)), Struct_1(vec3<u32>(62265u, 17960u, 4294967295u), vec3<f32>(-959f, 1000f, 250f)), Struct_1(vec3<u32>(7312u, 60596u, 34505u), vec3<f32>(-147f, 340f, -598f)), Struct_1(vec3<u32>(4294967295u, 76877u, 4294967295u), vec3<f32>(-1000f, 1383f, -713f)), Struct_1(vec3<u32>(1u, 1u, 1u), vec3<f32>(-408f, 646f, 567f)), Struct_1(vec3<u32>(1191u, 0u, 1u), vec3<f32>(-1020f, -962f, -468f)), Struct_1(vec3<u32>(29616u, 12331u, 1u), vec3<f32>(-1083f, -1670f, 846f)), Struct_1(vec3<u32>(1u, 11324u, 81687u), vec3<f32>(957f, -3041f, 328f)), Struct_1(vec3<u32>(2222u, 60453u, 0u), vec3<f32>(495f, 368f, -1197f)), Struct_1(vec3<u32>(4294967295u, 17448u, 4294967295u), vec3<f32>(-216f, 325f, 350f)), Struct_1(vec3<u32>(75370u, 41809u, 81944u), vec3<f32>(655f, 1185f, 238f)), Struct_1(vec3<u32>(0u, 69799u, 11454u), vec3<f32>(-457f, 825f, -1531f)), Struct_1(vec3<u32>(64214u, 4294967295u, 118110u), vec3<f32>(2108f, 1081f, -909f)), Struct_1(vec3<u32>(39011u, 4294967295u, 24251u), vec3<f32>(1415f, -290f, 671f)), Struct_1(vec3<u32>(58721u, 0u, 37331u), vec3<f32>(-470f, -1360f, -423f)), Struct_1(vec3<u32>(63000u, 11700u, 6098u), vec3<f32>(-621f, -312f, -692f)), Struct_1(vec3<u32>(1u, 6405u, 34513u), vec3<f32>(1302f, -475f, 1408f)), Struct_1(vec3<u32>(11552u, 1u, 29847u), vec3<f32>(2185f, -101f, 503f)), Struct_1(vec3<u32>(20052u, 34151u, 1u), vec3<f32>(244f, 438f, -1047f)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), vec3<f32>(625f, 1000f, 319f)), Struct_1(vec3<u32>(1u, 1u, 0u), vec3<f32>(557f, -579f, 104f)), Struct_1(vec3<u32>(42480u, 0u, 34739u), vec3<f32>(1383f, -1000f, 501f)), Struct_1(vec3<u32>(0u, 0u, 7632u), vec3<f32>(-832f, 482f, -1152f)), Struct_1(vec3<u32>(0u, 1u, 1u), vec3<f32>(225f, 945f, 365f)), Struct_1(vec3<u32>(78340u, 0u, 45457u), vec3<f32>(-120f, 3404f, -657f)), Struct_1(vec3<u32>(27705u, 34211u, 0u), vec3<f32>(1183f, -974f, -665f)), Struct_1(vec3<u32>(20383u, 25619u, 10917u), vec3<f32>(-364f, 311f, 672f)));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = global0.x;
    var var_1 = _wgslsmith_sub_i32(29030i, 25703i);
    var var_2 = ~(~(~vec2<u32>(0u, 18130u) ^ min(vec2<u32>(0u, global3[_wgslsmith_index_u32(88996u, 9u)]), vec2<u32>(0u, 40159u))) >> (_wgslsmith_mult_vec2_u32(max(~vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 16600u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.x, 9u)], 9u)], global0.x))), vec2<u32>(_wgslsmith_add_u32(55180u, global3[_wgslsmith_index_u32(global0.x, 9u)]), ~66829u)) % vec2<u32>(32u)));
    var var_3 = -_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.a.x, -2147483647i, -1i)), ~min(vec4<i32>(-1i, -2147483647i, global2[_wgslsmith_index_u32(55674u, 24u)], 0i), vec4<i32>(7863i, 1i, arg_1.x, global2[_wgslsmith_index_u32(var_2.x, 24u)])) << (vec4<u32>(1u, 27686u, ~global3[_wgslsmith_index_u32(72759u, 9u)], abs(var_2.x)) % vec4<u32>(32u)));
    let var_4 = -3346i;
    return !vec2<bool>(any(vec3<bool>(false, true, true)), true);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec2<bool>) -> StorageBuffer {
    var var_0 = 4294967295u;
    global3 = array<u32, 9>();
    var var_1 = Struct_4(min(vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xx | vec2<i32>(arg_0.x, 60386i), -vec2<i32>(-7854i, 25494i)), global2[_wgslsmith_index_u32(~global0.x, 24u)]), ~vec2<i32>(~1i, min(6607i, global2[_wgslsmith_index_u32(global0.x, 24u)]))), global1[_wgslsmith_index_u32(1u, 23u)], Struct_2(global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(13248u, global0.x, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, global0.x, arg_1))), 27u)]));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-410f))), global2[_wgslsmith_index_u32(3462u, 24u)], var_1.c.a.a.xz, (firstLeadingBit(var_1.c.a.a.x) ^ firstTrailingBit(37413u)) >> (~abs(4294967295u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 24>();
    var var_0 = _wgslsmith_div_u32(global3[_wgslsmith_index_u32(global0.x, 9u)], global0.x);
    let x = u_input.a;
    s_output = func_2(vec4<i32>(~(~2147483647i), -21638i, u_input.a.x, _wgslsmith_sub_i32(~(-u_input.a.x), u_input.a.x)), global0.x, !func_1(vec3<f32>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(56738u, 23u)], -444f), firstLeadingBit(u_input.a.zz >> (vec2<u32>(1u, global3[_wgslsmith_index_u32(3502u, 9u)]) % vec2<u32>(32u)))));
}


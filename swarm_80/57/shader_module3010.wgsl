struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec2<bool>(true, true), 0i, 0u, vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false), -37786i, 4294967295u, vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, true), -1i, 15267u, vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, true), -28024i, 8490u, vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, false), 2147483647i, 87324u, vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, true), -1i, 88735u, vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, false), 1i, 1u, vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, true), -9712i, 22058u, vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, true), 0i, 27100u, vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(true, true), 1i, 12043u, vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, true), -1i, 1u, vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false), 0i, 1u, vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, false), 0i, 4294967295u, vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, true), -44788i, 978u, vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, false), 2147483647i, 1u, vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, true), -1i, 0u, vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, false), i32(-2147483648), 19790u, vec2<bool>(true, false))));

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<f32, 23> = array<f32, 23>(1509f, -2206f, -498f, -593f, -319f, -107f, 448f, 1635f, -798f, -369f, 1139f, 1267f, -142f, 2149f, -1042f, 912f, -1528f, -352f, -608f, 495f, -1000f, 177f, -1667f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = Struct_4(reverseBits(74642u));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(u_input.b.x) ^ var_0.a, 1u, ~25632u), 19u)]);
    var var_2 = vec2<i32>(min(~(-var_1.a.b) << (1u % 32u), _wgslsmith_div_i32(~(-22187i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 46162i) >> (u_input.b.zx % vec2<u32>(32u)), -vec2<i32>(u_input.a, 15739i)))), -var_1.a.b);
    let var_3 = 92504i;
    let var_4 = var_0.a & _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, var_0.a) << (vec4<u32>(13027u, 1u, var_1.a.c, 1251u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(56515u, 77435u, var_1.a.c, u_input.b.x))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.c, var_0.a, var_1.a.c), vec3<u32>(u_input.b.x, var_0.a, 4294967295u)), 8645u, ~0u, _wgslsmith_add_u32(12201u, var_1.a.c)) << (reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a, var_0.a, 4294967295u, 4294967295u), vec4<u32>(var_0.a, u_input.b.x, var_0.a, var_1.a.c))) % vec4<u32>(32u)));
    return ~(~4294967295u);
}

fn func_2() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(func_3(), 32831u)), 17u)];
    return 9458i;
}

fn func_1() -> i32 {
    global1 = array<Struct_1, 19>();
    let var_0 = _wgslsmith_div_vec4_i32(~(~vec4<i32>(-34994i, _wgslsmith_sub_i32(u_input.a, u_input.a), func_2(), -18655i)), vec4<i32>(u_input.a, u_input.a, -2147483647i, ~abs(u_input.a)));
    let var_1 = global1[_wgslsmith_index_u32(~u_input.b.x, 19u)];
    let var_2 = Struct_4(~abs(~(~0u)));
    let var_3 = Struct_4(~(~(~(~u_input.b.x))));
    return ~select(_wgslsmith_mult_i32(func_2(), ~(i32(-1i) * -2147483647i)), _wgslsmith_add_i32(0i, ~reverseBits(2147483647i)), (var_3.a >> (var_1.c % 32u)) <= var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    var var_0 = true;
    global0 = array<Struct_2, 17>();
    global0 = array<Struct_2, 17>();
    let var_1 = _wgslsmith_div_i32(abs(-func_1()), i32(-1i) * -17031i);
    var var_2 = (u_input.b.x ^ u_input.b.x) ^ ~(~(~1u));
    var var_3 = Struct_2(Struct_1(select(vec2<bool>(all(vec2<bool>(false, true)), any(vec3<bool>(true, false, false))), vec2<bool>(true, true), true), _wgslsmith_clamp_i32(-17329i, 0i, 1i << (0u % 32u)) >> (u_input.b.x % 32u), 1u, vec2<bool>(true, false)));
    let var_4 = Struct_3(Struct_1(var_3.a.a, -(-2147483647i >> (firstTrailingBit(u_input.b.x) % 32u)), var_3.a.c, select(!vec2<bool>(false, var_3.a.a.x), vec2<bool>(any(vec2<bool>(var_3.a.a.x, false)), all(vec2<bool>(true, var_3.a.d.x))), select(select(var_3.a.a, var_3.a.d, var_3.a.a), vec2<bool>(var_3.a.a.x, var_3.a.d.x), var_1 > var_3.a.b))), Struct_2(Struct_1(!var_3.a.d, -2147483647i, ~0u, var_3.a.d)), reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b.x, var_3.a.c, 23211u, 6629u)), vec4<u32>(0u, 4294967295u, 4294967295u, 93980u)), select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 32350u, 38469u, u_input.b.x), vec4<u32>(0u, var_3.a.c, var_3.a.c, 107198u)), firstTrailingBit(vec4<u32>(u_input.b.x, 0u, var_3.a.c, 4294967295u)), any(vec4<bool>(false, var_3.a.d.x, true, var_3.a.d.x))))), Struct_1(!vec2<bool>(var_3.a.a.x, false), u_input.a, abs(u_input.b.x), vec2<bool>(var_3.a.d.x, var_3.a.a.x)));
    let var_5 = !select(false, true, !(all(var_3.a.d) | select(var_3.a.d.x, var_4.b.a.d.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(-2147483647i), -1i, -1i) | vec3<i32>(var_1, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(var_1, var_3.a.b), _wgslsmith_clamp_i32(var_1, -1i, var_1)), -(~var_4.b.a.b)), _wgslsmith_mod_u32(~(~var_4.b.a.c), 1u) | u_input.b.x, ~abs(var_3.a.b));
}


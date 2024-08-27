struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(20670i, 44435i, 1i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_5) -> u32 {
    return _wgslsmith_clamp_u32(reverseBits(_wgslsmith_clamp_u32(~4294967295u, 1u, 1u)), countOneBits(u_input.b.x), u_input.b.x);
}

fn func_2() -> Struct_1 {
    return Struct_1(vec4<bool>(true, any(vec2<bool>(false, false)) || true, !(u_input.c != u_input.b.x) & !all(vec3<bool>(true, true, true)), select(max(u_input.c, 1u), 17843u, true) < ~(~u_input.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(632f, _wgslsmith_div_f32(-2303f, -1036f)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(376f, -948f), vec2<f32>(-1075f, 1073f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(368f, 778f) + vec2<f32>(-874f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 205f)), vec2<bool>(true, true)))), ~u_input.b | vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(29214u, 59766u, u_input.b.x), vec3<u32>(0u, u_input.c, 4294967295u)) << (func_3(Struct_5(Struct_4(Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec2<f32>(1562f, 639f), u_input.b, vec4<i32>(1i, u_input.d.x, 2147483647i, -3388i)))), Struct_3(Struct_1(vec4<bool>(true, false, false, false), vec2<f32>(-400f, 1002f), u_input.b, vec4<i32>(u_input.d.x, 2147483647i, -41699i, 2147483647i)), -163f, Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(-1341f, 1587f), vec2<u32>(15771u, 0u), vec4<i32>(-1i, 1i, 0i, u_input.d.x))), vec2<f32>(-1827f, 1527f), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec2<f32>(-230f, 101f), vec2<u32>(u_input.b.x, 116940u), vec4<i32>(global0[_wgslsmith_index_u32(0u, 3u)], u_input.a.x, -1i, u_input.a.x)))), Struct_1(vec4<bool>(false, true, true, false), vec2<f32>(-835f, 866f), vec2<u32>(1u, 25932u), vec4<i32>(global0[_wgslsmith_index_u32(0u, 3u)], 20426i, -1i, u_input.a.x)), vec4<i32>(7301i, u_input.d.x, global0[_wgslsmith_index_u32(u_input.c, 3u)], -51922i))) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, u_input.b), u_input.b)), _wgslsmith_add_vec4_i32(select(-vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 3u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.c, 3u)], global0[_wgslsmith_index_u32(1151u, 3u)]), -vec4<i32>(u_input.a.x, 0i, 73664i, -61193i), u_input.b.x <= u_input.b.x) ^ abs(~vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 3u)], u_input.d.x, global0[_wgslsmith_index_u32(26438u, 3u)])), -(~(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], -33867i, 22868i, 37092i) | vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.c, 3u)], 43691i, -23715i)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    global0 = array<i32, 3>();
    global0 = array<i32, 3>();
    let var_0 = arg_2.a.d.x;
    return ~reverseBits(~(~69692u | _wgslsmith_div_u32(33578u, arg_1.c.x)));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    var var_0 = vec3<u32>(~(func_4(~38050u, func_2(), Struct_2(Struct_1(vec4<bool>(true, true, true, false), arg_0.zy, u_input.b, vec4<i32>(global0[_wgslsmith_index_u32(10602u, 3u)], global0[_wgslsmith_index_u32(53642u, 3u)], u_input.d.x, u_input.a.x)))) >> (_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 4013u) % 32u)), ~u_input.b.x & countOneBits(u_input.b.x), _wgslsmith_sub_u32(u_input.b.x, ~(u_input.b.x & max(4294967295u, 4294967295u))));
    let var_1 = Struct_5(Struct_4(Struct_2(Struct_1(vec4<bool>(false, true, false, false), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1831f, arg_0.x) * vec2<f32>(arg_0.x, arg_0.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, var_0.x), u_input.b), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.d.x)))), Struct_3(Struct_1(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false), _wgslsmith_f_op_vec2_f32(-arg_0.xy), ~u_input.b ^ ~var_0.yz, -countOneBits(vec4<i32>(u_input.d.x, 11914i, u_input.d.x, u_input.d.x))), 570f, Struct_2(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(select(arg_0.yy, arg_0.xz, vec2<bool>(true, true))), u_input.b ^ u_input.b, vec4<i32>(-2147483647i, 2147483647i, -2854i, global0[_wgslsmith_index_u32(16880u, 3u)]) >> (vec4<u32>(4294967295u, 1u, 1309u, var_0.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(round(arg_0.x))))), Struct_2(Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(floor(arg_0.zz)), vec2<u32>(56094u, 2496u), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, global0[_wgslsmith_index_u32(0u, 3u)], -2147483647i, 0i), vec4<i32>(1i, 0i, u_input.d.x, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(26267u, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)], 6445i, global0[_wgslsmith_index_u32(47893u, 3u)]))))), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(abs(arg_0.xx)), firstTrailingBit(vec2<u32>(u_input.b.x, 23235u)), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], 17803i, -9420i, ~reverseBits(u_input.d.x))), (min(vec4<i32>(-5996i, u_input.a.x, 0i, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), -vec4<i32>(global0[_wgslsmith_index_u32(77934u, 3u)], u_input.d.x, global0[_wgslsmith_index_u32(18127u, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)])) >> (~(~vec4<u32>(var_0.x, 4294967295u, 84581u, 4294967295u)) % vec4<u32>(32u))) << (vec4<u32>(firstTrailingBit(~u_input.b.x), var_0.x, 0u, abs(u_input.b.x >> (u_input.b.x % 32u))) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(sign(var_1.c.b.x));
    let var_3 = var_1.b.e.a.a.x;
    var var_4 = vec2<i32>(global0[_wgslsmith_index_u32(1u, 3u)], var_1.a.a.a.d.x);
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(826f, -882f, 282f)))) * vec3<f32>(-379f, _wgslsmith_f_op_f32(abs(-1235f)), -315f)));
    var var_1 = false;
    var_1 = true;
    var var_2 = Struct_2(func_2());
    var var_3 = Struct_2(Struct_1(vec4<bool>(true, _wgslsmith_f_op_f32(ceil(-829f)) != -629f, all(var_2.a.a), _wgslsmith_f_op_f32(var_2.a.b.x + 839f) < -602f), var_2.a.b, vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.c.x, var_0), u_input.b)), ~min(var_2.a.c.x, var_0)), _wgslsmith_mult_vec4_i32(var_2.a.d ^ vec4<i32>(u_input.d.x, var_2.a.d.x, 1i, global0[_wgslsmith_index_u32(var_0, 3u)]), -vec4<i32>(u_input.d.x, 1i, global0[_wgslsmith_index_u32(8343u, 3u)], u_input.d.x)) >> (select(min(vec4<u32>(var_2.a.c.x, var_0, 4294967295u, 7103u), vec4<u32>(142917u, var_0, 0u, u_input.c)), vec4<u32>(1u, 4294967295u, var_0, u_input.c), vec4<bool>(false, var_2.a.a.x, true, var_2.a.a.x)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(var_2.a.c, ~vec2<u32>(_wgslsmith_clamp_u32(54813u, 75058u, var_2.a.c.x), 4294967295u)), _wgslsmith_f_op_vec2_f32(-var_3.a.b));
}


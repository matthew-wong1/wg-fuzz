struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<u32>(47233u, 2256u, 21185u, 1u)), Struct_1(vec4<u32>(0u, 4294967295u, 33129u, 1u)), Struct_1(vec4<u32>(32651u, 0u, 21406u, 0u)), Struct_1(vec4<u32>(114264u, 4294967295u, 65860u, 13978u)), Struct_1(vec4<u32>(1u, 18426u, 4294967295u, 20392u)), Struct_1(vec4<u32>(0u, 1u, 4294967295u, 1u)), Struct_1(vec4<u32>(9335u, 1u, 3514u, 7421u)), Struct_1(vec4<u32>(1u, 0u, 0u, 134637u)), Struct_1(vec4<u32>(32718u, 30697u, 55417u, 1u)));

var<private> global1: array<Struct_1, 16>;

var<private> global2: vec4<u32>;

var<private> global3: array<vec2<i32>, 18>;

var<private> global4: array<i32, 22> = array<i32, 22>(1i, -2071i, i32(-2147483648), -1i, -1i, -33205i, -39521i, -28017i, 0i, -4572i, 34612i, -8804i, -72572i, 1i, i32(-2147483648), 0i, 26486i, 34303i, 1i, 14549i, 57950i, 0i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = countOneBits(firstTrailingBit(-max(global4[_wgslsmith_index_u32(u_input.c, 22u)], 1i)));
    var var_1 = max(u_input.d, ~reverseBits(u_input.d));
    let var_2 = arg_1;
    let var_3 = global4[_wgslsmith_index_u32(~abs(~(~(~10140u))), 22u)];
    let var_4 = firstTrailingBit(82801u);
    return _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, 22670u, arg_1.a.x), arg_1.a.ywy) ^ (vec3<u32>(5119u, var_2.a.x, arg_1.a.x) & var_2.a.ywy), ~var_2.a.xyy), abs(abs(~(~global2.x))));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(vec4<u32>(arg_0, arg_1.x, 4294967295u, ~(~1u)));
    global2 = arg_2.a;
    let var_1 = var_0.a.xyz;
    global3 = array<vec2<i32>, 18>();
    let var_2 = Struct_1(~(~arg_2.a));
    return vec3<bool>(true, u_input.d.x != select(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(24063u, 22u)], 23758i) >> (countOneBits(arg_1.x) % 32u), global4[_wgslsmith_index_u32(~(~17361u), 22u)], all(vec2<bool>(false, true))), any(vec4<bool>(true, true, true, true)));
}

fn func_2() -> u32 {
    let var_0 = 1802f;
    let var_1 = !select(select(vec3<bool>(true, select(true, true, true), false), func_4(func_3(0i, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec3<u32>(14550u, global2.x, 4294967295u), global1[_wgslsmith_index_u32(80097u, 16u)]), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))), !vec3<bool>(true, true, any(vec2<bool>(false, true))), true);
    let var_2 = !var_1.zz;
    var var_3 = true;
    let var_4 = firstTrailingBit(-(_wgslsmith_mod_vec3_i32(~u_input.d, ~u_input.d) | vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, u_input.d.x, global4[_wgslsmith_index_u32(u_input.a.x, 22u)]), firstLeadingBit(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(global4[_wgslsmith_index_u32(4294967295u, 22u)], u_input.d.x, global4[_wgslsmith_index_u32(49129u, 22u)]), u_input.d))));
    return _wgslsmith_sub_u32(u_input.a.x << (global2.x % 32u), abs(abs(u_input.a.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> u32 {
    global4 = array<i32, 22>();
    global4 = array<i32, 22>();
    var var_0 = 970f;
    let var_1 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.c, arg_0.a.x), func_2()), ~1u, _wgslsmith_div_u32(min(u_input.a.x, global2.x), 0u));
    global1 = array<Struct_1, 16>();
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    var var_1 = global0[_wgslsmith_index_u32(func_1(Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c, 79789u, global2.x), vec4<u32>(1u, 1u, 17680u, 1u)) ^ ~firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, global2.x, global2.x))), reverseBits(vec4<i32>(~(~0i), 13597i, _wgslsmith_mult_i32(1i, -1i), min(-62732i, ~u_input.b.x)))), 9u)];
    global4 = array<i32, 22>();
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, global4[_wgslsmith_index_u32(1u, 22u)]), countOneBits(u_input.d.x) << (_wgslsmith_mult_u32(global2.x, u_input.c) % 32u)) | firstTrailingBit(abs(global3[_wgslsmith_index_u32(global2.x, 18u)]) & (vec2<i32>(u_input.b.x, u_input.b.x) << (var_1.a.yw % vec2<u32>(32u)))), ~(~min(global3[_wgslsmith_index_u32(1u, 18u)], vec2<i32>(2147483647i, u_input.d.x))), _wgslsmith_mod_vec2_i32(global3[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_mult_vec2_i32(firstLeadingBit(~vec2<i32>(global4[_wgslsmith_index_u32(1u, 22u)], u_input.d.x)), -_wgslsmith_add_vec2_i32(vec2<i32>(1i, -23569i), u_input.b))));
    let var_3 = abs(firstTrailingBit(var_1.a));
    var var_4 = firstLeadingBit(~vec2<u32>(max(0u, 1u), ~0u) << (((~var_3.wz >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))) >> (~(~global2.yz) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(158f, 1f, _wgslsmith_f_op_f32(-1000f * 2408f), -1800f))), -var_2.x, 26150u, i32(-1i) * -9305i);
}


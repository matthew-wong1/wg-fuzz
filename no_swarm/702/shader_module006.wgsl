struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 20> = array<vec3<i32>, 20>(vec3<i32>(1i, -17973i, 0i), vec3<i32>(8378i, 0i, 1i), vec3<i32>(-47871i, 0i, 2147483647i), vec3<i32>(44232i, -1i, -15181i), vec3<i32>(-1i, -26961i, -36066i), vec3<i32>(-1i, 2147483647i, -7393i), vec3<i32>(2147483647i, 1i, 0i), vec3<i32>(34358i, -15886i, -1i), vec3<i32>(-28485i, -32201i, 2147483647i), vec3<i32>(1i, -9233i, -1i), vec3<i32>(-17909i, 20075i, 1i), vec3<i32>(i32(-2147483648), 2147483647i, -58309i), vec3<i32>(2147483647i, -17736i, -35031i), vec3<i32>(-1i, -9647i, 35752i), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(24894i, 2147483647i, 18741i), vec3<i32>(1i, 1i, -22947i), vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(2147483647i, -36705i, -14717i), vec3<i32>(1i, -38617i, 0i));

var<private> global1: array<Struct_1, 21>;

var<private> global2: u32 = 15937u;

var<private> global3: vec4<u32> = vec4<u32>(8910u, 0u, 74309u, 0u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    var var_0 = Struct_1(6506u);
    return 0u;
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(func_3(), global3.x << (63091u % 32u))), ~(vec2<u32>(u_input.d.x, global3.x) >> (u_input.d.xz % vec2<u32>(32u)))) >> (firstLeadingBit(~0u) % 32u), 21u)];
    var var_1 = vec3<f32>(229f, _wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -1414f) - _wgslsmith_f_op_f32(-1081f * -1000f)), _wgslsmith_f_op_f32(1155f - -700f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1006f + -183f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-799f - 1000f) * -175f), true))));
    let var_2 = -277f;
    var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-140f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_1.x, var_1.x);
    let var_3 = global1[_wgslsmith_index_u32(var_0.a, 21u)];
    return reverseBits(~4294967295u);
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = true;
    let var_1 = Struct_1(func_2(u_input.d));
    let var_2 = Struct_1(~41600u);
    let var_3 = !select(select(vec4<bool>(any(vec3<bool>(true, true, false)), true, var_1.a > var_2.a, true), vec4<bool>(all(vec4<bool>(true, true, true, false)), true, u_input.b >= global3.x, any(vec2<bool>(false, true))), select(true, true, true)), vec4<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)), true, true), false);
    global2 = reverseBits(4294967295u);
    return max(firstLeadingBit(0u), reverseBits(_wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(u_input.d.x, var_1.a, var_1.a)) << (firstLeadingBit(1u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(92889u, ~_wgslsmith_mult_u32(func_1(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, 0i, -41973i, 2147483647i), vec4<i32>(35278i, 1i, 2147483647i, -35670i))), 4294967295u), u_input.e.x);
    var var_1 = vec2<i32>(1i, ~(-14474i));
    global2 = countOneBits(var_0.x) ^ (_wgslsmith_mod_u32(1u, ~(~u_input.c)) & ~(reverseBits(u_input.c) | var_0.x));
    var_1 = vec2<i32>(var_1.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(0i, ~var_1.x), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(1i, var_1.x)), vec2<i32>(-2147483647i, var_1.x))) >> (_wgslsmith_add_u32(global3.x, select(func_1(vec4<i32>(var_1.x, 0i, -1i, 60050i)), 4294967295u << (global3.x % 32u), true)) % 32u));
    var_1 = firstLeadingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(var_1.x, 4866i) << (select(var_0.yx, vec2<u32>(1u, 1u), true) % vec2<u32>(32u)), abs(vec2<i32>(-1i, var_1.x)), select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-34534i, -2147483647i), vec2<i32>(33919i, var_1.x), vec2<i32>(var_1.x, -1i)), max(vec2<i32>(0i, -44496i), vec2<i32>(var_1.x, var_1.x)), vec2<bool>(true, false))), vec2<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_add_i32(var_1.x, var_1.x)), 1i)));
    let var_2 = 826f;
    let var_3 = global1[_wgslsmith_index_u32(56137u, 21u)];
    global2 = ~0u;
    let var_4 = 979f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~global3.x))));
}


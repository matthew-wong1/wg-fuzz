struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: Struct_1 = Struct_1(-709f, vec4<i32>(0i, i32(-2147483648), 2147483647i, 22358i), 1u);

var<private> global2: array<u32, 17>;

var<private> global3: array<vec3<i32>, 8>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(665f - _wgslsmith_f_op_f32(f32(-1f) * -348f)), global1.a));
    let var_2 = vec3<u32>(u_input.c.x, ~(1u | select(arg_0.c, 0u, select(false, var_0, var_0))), _wgslsmith_mod_u32(firstTrailingBit(u_input.c.x), _wgslsmith_clamp_u32(19842u, ~45390u, 116662u)) >> (16180u % 32u));
    return 0u;
}

fn func_3() -> vec3<bool> {
    var var_0 = firstTrailingBit(~(~(~vec4<u32>(global2[_wgslsmith_index_u32(u_input.c.x, 17u)], global1.c, 3938u, 4294967295u)))) >> (vec4<u32>(global2[_wgslsmith_index_u32(12654u, 17u)], _wgslsmith_div_u32(~4294967295u, global1.c), global1.c | ~(~global2[_wgslsmith_index_u32(u_input.c.x, 17u)]), min(~global1.c ^ 40018u, global2[_wgslsmith_index_u32(47128u, 17u)])) % vec4<u32>(32u));
    var var_1 = -351f;
    var var_2 = _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(max(16174u, _wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.yz)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(5685u, 0u), 112830u, 21677u), global1.c, global1.c)), reverseBits(~(vec4<u32>(41975u, global1.c, u_input.c.x, global1.c) ^ vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, 42355u))) & ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(global1.c, var_0.x, 128285u, global1.c), _wgslsmith_mult_vec4_u32(vec4<u32>(118010u, 4294967295u, u_input.c.x, 14031u), vec4<u32>(global1.c, 11785u, 1u, 4294967295u)), vec4<u32>(global1.c, global1.c, global2[_wgslsmith_index_u32(59927u, 17u)], 9438u) ^ vec4<u32>(global1.c, var_0.x, u_input.c.x, global1.c)), abs(vec4<u32>(~_wgslsmith_clamp_u32(60905u, 4294967295u, u_input.c.x), _wgslsmith_dot_vec3_u32(reverseBits(var_0.zxx), u_input.c >> (var_0.xyw % vec3<u32>(32u))), ~u_input.c.x, _wgslsmith_add_u32(~4294967295u, global1.c << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13837u, 17u)], 17u)] % 32u)))));
    var_1 = _wgslsmith_f_op_f32(global1.a * global1.a);
    var_0 = vec4<u32>(var_0.x, ~4294967295u, u_input.c.x, _wgslsmith_dot_vec2_u32(max(var_2.zy, _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.c.x, 0u), ~var_2.yz)), u_input.c.yx));
    return !vec3<bool>(select(false, !(174i <= global1.b.x), any(vec2<bool>(true, false))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, 42713i), global1.b.x) != (-2147483647i >> (min(53930u, 1u) % 32u)), any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), true)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, global2[_wgslsmith_index_u32(func_2(Struct_1(global1.a, global1.b, 1u)), 17u)]), global1.c, select(4294967295u, abs(1u), global1.a == global1.a), _wgslsmith_mod_u32(19171u | global1.c, _wgslsmith_mult_u32(global1.c, 47012u))), vec4<u32>(reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, global2[_wgslsmith_index_u32(1u, 17u)], global2[_wgslsmith_index_u32(81463u, 17u)]), 17u)]), 70988u, 1u, u_input.c.x), vec4<u32>(~_wgslsmith_add_u32(u_input.c.x, 8053u), ~global2[_wgslsmith_index_u32(u_input.c.x, 17u)] << (global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 16685u), u_input.c.yx), 17u)] % 32u), abs(~13640u), ~_wgslsmith_div_u32(27353u, global1.c)));
    var var_1 = global0[_wgslsmith_index_u32(3322u & ~var_0.x, 18u)];
    var var_2 = any(!vec4<bool>(true, true, any(!vec3<bool>(arg_0, true, arg_2)), (267f >= var_1.a) & true));
    var_2 = any(select(vec3<bool>(arg_2, arg_0, true), select(!(!vec3<bool>(true, arg_2, false)), select(func_3(), !vec3<bool>(arg_0, false, arg_0), true), vec3<bool>(!arg_0, true, arg_2)), true));
    var_2 = arg_0 & (_wgslsmith_f_op_f32(f32(-1f) * -1066f) < _wgslsmith_f_op_f32(-arg_1));
    return global0[_wgslsmith_index_u32(~global1.c, 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1154f, vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(global1.b, vec4<i32>(1i, -2147483647i, global1.b.x, 15025i)), vec4<i32>(-24399i, 6615i, 2147483647i, -1i) ^ global1.b), -2147483647i, -34218i, u_input.b) >> (vec4<u32>(max(global2[_wgslsmith_index_u32(1u, 17u)] ^ 4294967295u, global2[_wgslsmith_index_u32(~96560u, 17u)]), 0u, 59276u, min(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x), 12985u)) % vec4<u32>(32u)), (reverseBits(min(u_input.c.x, global1.c)) ^ 4294967295u) & 27535u);
    let var_1 = func_1(!(-2147483647i < u_input.d) || !any(vec2<bool>(false, true)), global1.a, select(true, true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))));
    global1 = Struct_1(var_0.a, ~vec4<i32>(-2147483647i, min(global1.b.x, var_1.b.x), abs(var_1.b.x), (global1.b.x >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(55737u, 17u)], 17u)] % 32u)) >> (~global2[_wgslsmith_index_u32(u_input.c.x, 17u)] % 32u)), 7606u);
    var var_2 = !vec2<bool>(!any(vec3<bool>(false, false, true)) || false, any(vec4<bool>(true, false, func_3().x, true)));
    let var_3 = _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(4294967295u, 17u)], ~0u);
    let var_4 = func_1(var_2.x, 1249f, !(!(0u > global2[_wgslsmith_index_u32(4294967295u, 17u)])));
    let var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_4.a, 1414f)) + 259f))), -1402f));
    let var_6 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, 522f))))))), vec2<f32>(170f, _wgslsmith_f_op_f32(-1725f - _wgslsmith_f_op_f32(step(global1.a, var_1.a)))));
    global1 = func_1(true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(828f, _wgslsmith_f_op_f32(f32(-1f) * -276f)) + _wgslsmith_f_op_f32(-var_0.a)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.b.x);
}


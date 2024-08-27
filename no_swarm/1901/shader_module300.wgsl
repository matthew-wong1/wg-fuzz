struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 3> = array<bool, 3>(true, true, true);

var<private> global2: array<bool, 15>;

var<private> global3: array<vec3<bool>, 14>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: i32) -> bool {
    var var_0 = Struct_1(~(~abs(global0.a)));
    var var_1 = !select(!select(vec4<bool>(global1[_wgslsmith_index_u32(global0.a.x, 3u)], false, true, false), !vec4<bool>(true, false, true, global2[_wgslsmith_index_u32(4294967295u, 15u)]), global2[_wgslsmith_index_u32(1u, 15u)]), select(vec4<bool>(true, select(false, true, true), true, !global2[_wgslsmith_index_u32(arg_0, 15u)]), vec4<bool>(select(global1[_wgslsmith_index_u32(var_0.a.x, 3u)], false, false), all(vec4<bool>(false, true, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(global0.a.x, 15u)])), global2[_wgslsmith_index_u32(0u ^ arg_0, 15u)], false & global2[_wgslsmith_index_u32(var_0.a.x, 15u)]), select(select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.a.x, 3u)], false, global1[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(var_0.a.x, 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(17897u, 3u)], false, global1[_wgslsmith_index_u32(arg_0, 3u)], false), vec4<bool>(global2[_wgslsmith_index_u32(42574u, 15u)], global1[_wgslsmith_index_u32(59290u, 3u)], false, false)), !vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0, 3u)], global2[_wgslsmith_index_u32(arg_0, 15u)], false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(arg_0, 3u)], global1[_wgslsmith_index_u32(arg_0, 3u)]))), vec4<bool>(any(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 15u)], true, global1[_wgslsmith_index_u32(arg_0, 3u)], true)), true, false && (56256u <= global0.a.x), true));
    let var_2 = -abs(~vec4<i32>(u_input.a.x, 12045i, 22058i, 1i)) | vec4<i32>(firstLeadingBit(~firstLeadingBit(u_input.b)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(0i, u_input.b), ~1i) | _wgslsmith_mult_i32(i32(-1i) * -1i, 27156i), ~(~max(-22789i, 26954i)), _wgslsmith_clamp_i32(-abs(u_input.b), _wgslsmith_mult_i32(arg_1, 5572i) << (global0.a.x % 32u), 0i));
    let var_3 = _wgslsmith_sub_u32(~(~(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 37356u, 1u), vec3<u32>(var_0.a.x, global0.a.x, var_0.a.x)) & 1u)), var_0.a.x);
    var var_4 = firstTrailingBit(var_2.yz) | u_input.a;
    return var_1.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = array<bool, 3>();
    let var_0 = select(vec4<bool>(global1[_wgslsmith_index_u32(global0.a.x, 3u)] && global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~0u, 19619u), 15u)], (global0.a.x != ~1u) & func_3(global0.a.x | global0.a.x, u_input.b), !any(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(38194u, global0.a.x), 14u)]), any(select(select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(54221u, 3u)], false), vec4<bool>(global2[_wgslsmith_index_u32(41275u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], false, arg_0), arg_0), vec4<bool>(arg_0, global1[_wgslsmith_index_u32(0u, 3u)], arg_0, false), select(vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(3494u, 3u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], true, global2[_wgslsmith_index_u32(global0.a.x, 15u)], false), vec4<bool>(true, arg_0, arg_0, false))))), vec4<bool>(func_3(_wgslsmith_clamp_u32(1u, 4294967295u, 14215u), -25881i), countOneBits(firstTrailingBit(-8031i)) > -13173i, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(~global0.a.x, _wgslsmith_div_u32(global0.a.x, 4294967295u))), 15u)], false), all(!(!vec2<bool>(false, global1[_wgslsmith_index_u32(11070u, 3u)]))));
    global3 = array<vec3<bool>, 14>();
    var var_1 = func_3(1u, countOneBits(~1i)) || arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1301f), 1f, -1000f)));
    return Struct_1(vec2<u32>(54812u, ~_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, global0.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(29600u, global0.a.x, 4294967295u), vec3<u32>(global0.a.x, 76368u, 27979u)))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(global0.a.x, 15841u, 4294967295u, 130u)), _wgslsmith_div_vec4_u32(vec4<u32>(global0.a.x, 38029u, global0.a.x, global0.a.x), vec4<u32>(1u, 1u, 13189u, 0u))), ~(~vec4<u32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))), _wgslsmith_sub_u32(global0.a.x, 1u << (global0.a.x % 32u))), _wgslsmith_div_u32(~87401u, firstTrailingBit(42048u)));
    let var_1 = firstLeadingBit(_wgslsmith_div_i32(~(~2147483647i), -1i));
    let var_2 = func_2(1u == _wgslsmith_mult_u32(global0.a.x, abs(1u)));
    let var_3 = (~_wgslsmith_div_u32(~19848u, 4294967295u) & _wgslsmith_sub_u32(~1u, var_2.a.x)) << ((~(~abs(4294967295u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.x, 32622u, 49148u, reverseBits(var_2.a.x)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, global0.a.x, global0.a.x, var_2.a.x), vec4<u32>(1u, 1u, 1u, 1u))) % 32u)) % 32u);
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(func_2(any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(var_3, 15u)]))).a.x << (42530u % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3, 29271u, 10468u, 74290u), ~vec4<u32>(74357u, 4294967295u, 4294967295u, global0.a.x)), all(vec2<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(var_3, 3u)], global1[_wgslsmith_index_u32(global0.a.x, 3u)])), global2[_wgslsmith_index_u32(~16344u, 15u)]))), global0.a.x, var_2.a.x), 15u)];
    return func_2(func_3(_wgslsmith_div_u32(_wgslsmith_sub_u32(0u, global0.a.x), global0.a.x) & _wgslsmith_div_u32(var_2.a.x, 55133u), -2147483647i));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global3 = array<vec3<bool>, 14>();
    return func_1();
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_i32(u_input.a, -vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-11144i, u_input.b, 0i), vec3<i32>(-7705i, 1i, u_input.b)))) >> ((global0.a >> (~(~arg_0.a) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_1 = Struct_2(firstTrailingBit(func_2(_wgslsmith_sub_i32(-77707i, var_0.x) > (u_input.b & var_0.x)).a), vec4<bool>(global1[_wgslsmith_index_u32(32908u, 3u)], false, true, true), Struct_1(countOneBits(vec2<u32>(arg_0.a.x, 58117u))), Struct_1(_wgslsmith_sub_vec2_u32(min(arg_0.a, vec2<u32>(global0.a.x, global0.a.x)), select(arg_0.a, vec2<u32>(4294967295u, 4294967295u), vec2<bool>(global1[_wgslsmith_index_u32(global0.a.x, 3u)], global2[_wgslsmith_index_u32(global0.a.x, 15u)]))) << (global0.a % vec2<u32>(32u))), arg_0);
    let var_2 = func_1().a.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1274f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-373f, 1150f)))))) - -727f) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1306f - 512f) - _wgslsmith_f_op_f32(max(952f, 966f))) * _wgslsmith_f_op_f32(ceil(1f))))));
    let var_4 = false;
    return Struct_1(vec2<u32>(~(20419u << (1u % 32u)), abs(49067u & arg_0.a.x)) & ~(~vec2<u32>(94085u, 32242u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_4(vec4<u32>(_wgslsmith_mod_u32(~93321u, 1u), ~global0.a.x, ~(~global0.a.x), ~_wgslsmith_sub_u32(global0.a.x, 0u)), -_wgslsmith_mod_vec2_i32(u_input.a, ~u_input.a), func_1(), func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(0u, ~((vec4<i32>(-1i, u_input.b, u_input.b, u_input.b) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, global0.a.x), vec4<u32>(4830u, global0.a.x, 0u, global0.a.x)) % vec4<u32>(32u))) ^ vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), abs(2147483647i), reverseBits(-2147483647i), u_input.a.x)), func_1().a.x, u_input.a.x);
}


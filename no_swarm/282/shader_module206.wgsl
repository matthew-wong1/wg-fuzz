struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec4<bool>;

var<private> global2: array<vec4<u32>, 8>;

var<private> global3: array<bool, 5> = array<bool, 5>(true, true, false, true, true);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>) -> vec4<bool> {
    var var_0 = Struct_1(!select(select(select(arg_0.zx, arg_0.zz, true), !global1.wy, vec2<bool>(false, true)), vec2<bool>(u_input.d.x < u_input.e.x, arg_0.x), global1.ww), vec2<bool>(true, all(vec4<bool>(true, !global3[_wgslsmith_index_u32(u_input.c, 5u)], true, true))), -1284f, ~(1u << ((abs(global0.x) >> (u_input.b.x % 32u)) % 32u)));
    global1 = select(select(!select(vec4<bool>(global1.x, true, false, global1.x), !vec4<bool>(global1.x, arg_0.x, true, false), !vec4<bool>(global1.x, global1.x, global1.x, false)), !vec4<bool>(false, false, global3[_wgslsmith_index_u32(~1u, 5u)], true), var_0.a.x), !vec4<bool>(all(select(vec4<bool>(global1.x, false, global3[_wgslsmith_index_u32(82717u, 5u)], false), vec4<bool>(global1.x, var_0.b.x, arg_0.x, true), vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 5u)], true, var_0.b.x))), any(global1.ywx), any(select(vec4<bool>(true, var_0.b.x, true, true), vec4<bool>(var_0.b.x, global1.x, true, var_0.a.x), false)), false & !global1.x), true);
    global1 = vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 5u)], any(vec4<bool>(arg_0.x, var_0.a.x, any(vec4<bool>(global1.x, true, true, arg_0.x)), (global0.x >= var_0.d) && (arg_0.x & true))), all(global1.wyw), false);
    let var_1 = ~(0u | ~_wgslsmith_add_u32(27201u, firstLeadingBit(var_0.d)));
    global2 = array<vec4<u32>, 8>();
    return vec4<bool>(arg_0.x, global1.x, -7672i <= _wgslsmith_mod_i32(firstLeadingBit(u_input.a.x), u_input.d.x), false);
}

fn func_2(arg_0: vec4<u32>) -> vec3<u32> {
    global1 = select(select(vec4<bool>(any(global1.xw), global3[_wgslsmith_index_u32(~select(global0.x, 0u, global1.x), 5u)], false, global3[_wgslsmith_index_u32(global0.x, 5u)]), vec4<bool>(any(vec2<bool>(global1.x, global3[_wgslsmith_index_u32(arg_0.x, 5u)])), global3[_wgslsmith_index_u32(global0.x, 5u)], true, any(global1.wyy) | (u_input.a.x != -2147483647i)), func_3(select(vec3<bool>(global1.x, global1.x, true), !vec3<bool>(global1.x, global3[_wgslsmith_index_u32(4294967295u, 5u)], true), true & global3[_wgslsmith_index_u32(u_input.c, 5u)]))), select(select(select(!vec4<bool>(true, global1.x, false, false), select(vec4<bool>(false, global1.x, global3[_wgslsmith_index_u32(0u, 5u)], global1.x), vec4<bool>(true, true, global1.x, true), global3[_wgslsmith_index_u32(arg_0.x, 5u)]), func_3(global1.wwx).x), select(!vec4<bool>(global1.x, global1.x, global3[_wgslsmith_index_u32(u_input.b.x, 5u)], global3[_wgslsmith_index_u32(global0.x, 5u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 5u)], global3[_wgslsmith_index_u32(global0.x, 5u)], global1.x), func_3(vec3<bool>(true, true, global1.x))), true), !vec4<bool>(!global3[_wgslsmith_index_u32(11887u, 5u)], global1.x, global3[_wgslsmith_index_u32(~arg_0.x, 5u)], func_3(vec3<bool>(false, global1.x, global3[_wgslsmith_index_u32(70132u, 5u)])).x), vec4<bool>(false, !(!global3[_wgslsmith_index_u32(u_input.b.x, 5u)]), func_3(vec3<bool>(false, false, false)).x, true)), vec4<bool>(select(false, all(func_3(global1.zxy).zyz), all(vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 5u)], true))), true, global1.x, true));
    var var_0 = global1.x || func_3(!vec3<bool>(1u != arg_0.x, true, true)).x;
    global2 = array<vec4<u32>, 8>();
    var var_1 = max(max(reverseBits(vec4<i32>(_wgslsmith_mult_i32(u_input.a.x, 2147483647i), u_input.d.x, u_input.e.x, ~u_input.e.x)), vec4<i32>(firstLeadingBit(u_input.e.x & 1i), 44794i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-22280i, u_input.e.x), vec2<i32>(u_input.e.x, -4177i)), 2147483647i), max(u_input.a.x, u_input.e.x) & -2147483647i)), vec4<i32>(min(3750i, 22545i), _wgslsmith_mod_i32(6043i, u_input.a.x), ~u_input.e.x, 14115i));
    var_1 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(23835i, var_1.x, u_input.a.x, 2147483647i), vec4<i32>(20436i, -1i, var_1.x, u_input.a.x)), vec4<i32>(var_1.x, 16935i, 2040i, u_input.a.x)), max(vec4<i32>(u_input.e.x, _wgslsmith_mult_i32(-32037i, 6683i), ~var_1.x, 0i), vec4<i32>(u_input.a.x ^ var_1.x, 16297i, countOneBits(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(31402i, 2147483647i), vec2<i32>(-6856i, 1i))))), -abs(vec4<i32>(0i, u_input.d.x, var_1.x, -29540i)) & -(vec4<i32>(20166i, var_1.x, 0i, var_1.x) | -vec4<i32>(1i, var_1.x, u_input.e.x, -2147483647i)));
    return countOneBits(vec3<u32>(global0.x, ~arg_0.x, ~_wgslsmith_dot_vec4_u32(arg_0, ~arg_0)));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = global1.x;
    let var_1 = func_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(max(arg_0.d, ~global0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 8344u) ^ u_input.b, firstLeadingBit(reverseBits(u_input.b)))), 8u)]);
    var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_1, vec3<u32>(arg_0.d, 32620u, 0u)), global0.wyz), arg_0.d), 5u)];
    var var_3 = vec2<f32>(-1367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -611f) * arg_0.c));
    var var_4 = max(-42728i >> (0u % 32u), ~u_input.d.x);
    return select(!(!(!vec4<bool>(true, arg_0.a.x, false, global1.x))), select(vec4<bool>(!(false && global1.x), false, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(13938u, var_1.x), var_1.x), 5u)], !(-2147483647i == u_input.e.x)), !vec4<bool>(true, arg_0.b.x, !global1.x, any(vec4<bool>(arg_0.b.x, global1.x, true, global3[_wgslsmith_index_u32(global0.x, 5u)]))), !func_3(!vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 5u)], global1.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 8>();
    let var_0 = Struct_1(vec2<bool>(all(func_1(Struct_1(global1.yx, global1.zx, 331f, u_input.b.x))), any(global1.wzx)), select(vec2<bool>(false, true), global1.zz, global1.zx), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(142f, 1498f)), _wgslsmith_f_op_f32(floor(-2193f))))))), 47261u);
    var var_1 = vec2<i32>(-30481i, 30411i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~global0.yz), vec2<u32>(_wgslsmith_div_u32(6424u, ~30548u), ~(~global0.x)) | vec2<u32>(var_0.d, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(8891u, var_0.d)), firstTrailingBit(global0.wz))));
}


struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

var<private> global1: vec4<u32>;

var<private> global2: array<bool, 21>;

var<private> global3: Struct_1;

var<private> global4: array<f32, 12>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> vec4<bool> {
    let var_0 = u_input.a;
    var var_1 = abs(_wgslsmith_add_vec4_u32((~vec4<u32>(4294967295u, global1.x, global1.x, global1.x) & select(vec4<u32>(1u, global1.x, 4294967295u, 1407u), vec4<u32>(arg_1, arg_1, 1u, 0u), vec4<bool>(global2[_wgslsmith_index_u32(13820u, 21u)], arg_3, true, global2[_wgslsmith_index_u32(global1.x, 21u)]))) ^ _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, arg_1, global1.x, 77266u), vec4<u32>(arg_1, arg_1, 4294967295u, global1.x)), ~vec4<u32>(global1.x, 9518u, 6431u, arg_1)), ~vec4<u32>(firstTrailingBit(66148u), min(global1.x, 20279u), min(27297u, global1.x), 1u)));
    var var_2 = ~max(min(max(~vec3<u32>(4294967295u, global1.x, global1.x), _wgslsmith_mult_vec3_u32(vec3<u32>(6466u, global1.x, 1u), var_1.www)), select(_wgslsmith_sub_vec3_u32(global1.xyw, vec3<u32>(var_1.x, 4294967295u, global1.x)), ~vec3<u32>(1u, 8216u, 39584u), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 21u)], true))), _wgslsmith_mult_vec3_u32(global1.wwz, vec3<u32>(arg_1, var_1.x, arg_1) ^ vec3<u32>(var_1.x, 4294967295u, 1u)));
    let var_3 = !(!all(select(select(vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 21u)], false), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, global2[_wgslsmith_index_u32(69146u, 21u)]), vec2<bool>(arg_3, arg_3), false), arg_3)));
    var_1 = abs(vec4<u32>(~select(~7289u, arg_1, global2[_wgslsmith_index_u32(var_2.x, 21u)] & arg_3), 0u, 0u, 31956u));
    return !select(!(!(!vec4<bool>(global2[_wgslsmith_index_u32(39862u, 21u)], var_3, global2[_wgslsmith_index_u32(28368u, 21u)], true))), vec4<bool>(true, false, any(select(vec2<bool>(global2[_wgslsmith_index_u32(var_2.x, 21u)], true), vec2<bool>(true, true), false)), true), global4[_wgslsmith_index_u32(~(~0u), 12u)] != 451f);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_2(select(global1.xwy, ~vec3<u32>(~1u, _wgslsmith_clamp_u32(global1.x, global1.x, global1.x), _wgslsmith_mod_u32(global1.x, 0u)), all(func_3(global3.c.zy >> (global1.yy % vec2<u32>(32u)), 20094u, Struct_1(global3.a, global3.b, vec3<i32>(global3.d.x, 1i, 44368i), vec4<i32>(1i, u_input.a, 7972i, u_input.a)), global2[_wgslsmith_index_u32(firstTrailingBit(0u), 21u)]))), global1.yzw, min(_wgslsmith_div_i32(0i, -u_input.a), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(global1.x, 29u)], u_input.a << (0u % 32u))) >> (~(~1u) % 32u), Struct_1(global3.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(510f, 1502f, global4[_wgslsmith_index_u32(global1.x, 12u)], global4[_wgslsmith_index_u32(71221u, 12u)])) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.b))), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-72034i, 38285i, 2223i), abs(global3.c))), vec4<i32>(_wgslsmith_dot_vec2_i32(global3.d.wz, global3.d.zz), u_input.a, _wgslsmith_mod_i32(0i, -1i) >> (global1.x % 32u), i32(-1i) * -global3.c.x)), Struct_1(global3.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(global1.x, 12u)], -1108f, 182f, 1584f) * global3.b))), abs(vec3<i32>(_wgslsmith_mod_i32(6830i, global0[_wgslsmith_index_u32(global1.x, 29u)]), global3.c.x, ~u_input.a)), select(-global3.d >> (~vec4<u32>(global1.x, global1.x, 1u, global1.x) % vec4<u32>(32u)), global3.d, func_3(vec2<i32>(-1i, global3.c.x), global1.x, Struct_1(1866f, vec4<f32>(global4[_wgslsmith_index_u32(global1.x, 12u)], 1089f, global3.b.x, -1064f), global3.c, global3.d), all(vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 21u)], global2[_wgslsmith_index_u32(68315u, 21u)]))))));
    let var_1 = !(-1i >= _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global3.c.x, 39258i, 4454i, global0[_wgslsmith_index_u32(global1.x, 29u)])), -(vec4<i32>(26767i, global3.d.x, var_0.c, 14897i) << (vec4<u32>(global1.x, var_0.a.x, 60133u, global1.x) % vec4<u32>(32u)))));
    let var_2 = select(!select(vec4<bool>(true, true, !var_1, true), !(!vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(var_0.a.x, 21u)])), true), !select(func_3(firstLeadingBit(vec2<i32>(global3.c.x, 26723i)), 682u, Struct_1(1295f, global3.b, vec3<i32>(23531i, var_0.e.d.x, var_0.e.c.x), vec4<i32>(global3.c.x, 40789i, 1i, -22667i)), var_0.e.d.x < 265i), vec4<bool>(all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(18198u, 21u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.xx, vec2<u32>(global1.x, global1.x)), 21u)], !global2[_wgslsmith_index_u32(global1.x, 21u)], true), false), true);
    global2 = array<bool, 21>();
    let var_3 = _wgslsmith_f_op_f32(-global3.b.x);
    return Struct_3(~(~7451u), u_input.a, var_2.x);
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = vec4<bool>(any(!vec4<bool>(global3.b.x < -771f, true, false, global2[_wgslsmith_index_u32(global1.x << (global1.x % 32u), 21u)])), true, !global2[_wgslsmith_index_u32(global1.x, 21u)], true);
    let var_1 = func_2();
    var var_2 = !(!(!(global2[_wgslsmith_index_u32(global1.x, 21u)] || var_0.x))) | global2[_wgslsmith_index_u32(countOneBits(32754u), 21u)];
    let var_3 = Struct_1(706f, _wgslsmith_f_op_vec4_f32(global3.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(913f, 869f, -538f, global4[_wgslsmith_index_u32(global1.x, 12u)]))))), (vec3<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(global1.x, 29u)], global3.c.x), -1i, -1i) << (_wgslsmith_sub_vec3_u32(~vec3<u32>(58958u, 34950u, 0u), vec3<u32>(global1.x, global1.x, 0u)) % vec3<u32>(32u))) | vec3<i32>(-8429i, ~_wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(global1.x, 29u)]), ~2147483647i & arg_0), max(~vec4<i32>(-7762i, global0[_wgslsmith_index_u32(0u, 29u)], u_input.a, 32278i), global3.d) ^ (global3.d >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, var_1.a, global1.x, 29687u), vec4<u32>(global1.x, 0u, 1u, global1.x) & vec4<u32>(var_1.a, 1u, global1.x, var_1.a)) % vec4<u32>(32u))));
    let var_4 = !vec3<bool>(!(!var_1.c && any(vec2<bool>(false, true))), !var_0.x, any(!vec3<bool>(var_0.x, true, false)));
    return Struct_2(global1.xzx, ~select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, 0u, global1.x), vec4<u32>(var_1.a, var_1.a, 20380u, 37189u)), ~global1.x, 11802u), global1.xyy, true), abs(-(~(-47327i))), var_3, var_3);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 29>();
    global2 = array<bool, 21>();
    global4 = array<f32, 12>();
    let var_0 = func_1(~u_input.a);
    global4 = array<f32, 12>();
    var var_1 = func_3(-abs(-vec2<i32>(global0[_wgslsmith_index_u32(var_0.a.x, 29u)], -13629i)), ~1u, Struct_1(-2075f, var_0.e.b, (reverseBits(vec3<i32>(-35219i, -2147483647i, 18812i)) | min(global3.c, vec3<i32>(global0[_wgslsmith_index_u32(var_0.b.x, 29u)], -2147483647i, -1i))) & vec3<i32>(select(u_input.a, 1i, true), ~global3.d.x, reverseBits(global3.c.x)), var_0.d.d), !all(!func_3(vec2<i32>(var_0.c, global3.d.x), 50993u, Struct_1(876f, var_0.e.b, var_0.d.c, var_0.d.d), global2[_wgslsmith_index_u32(21498u, 21u)]).zw)).x;
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.x, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(var_0.e.d, var_0.e.d ^ global3.d), vec4<i32>(-var_0.d.c.x, global0[_wgslsmith_index_u32(global1.x, 29u)], 0i, -global3.c.x)), vec4<i32>(func_1(-31432i).d.c.x, _wgslsmith_div_i32(global3.c.x, 29984i), u_input.a, var_0.e.d.x) << (select(~vec4<u32>(global1.x, global1.x, var_0.a.x, global1.x), reverseBits(vec4<u32>(var_0.a.x, 82238u, 0u, 4182u)), !vec4<bool>(global2[_wgslsmith_index_u32(425u, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], true, global2[_wgslsmith_index_u32(33464u, 21u)])) % vec4<u32>(32u))), reverseBits(min(-global0[_wgslsmith_index_u32(var_0.b.x, 29u)] ^ global0[_wgslsmith_index_u32(var_0.b.x ^ global1.x, 29u)], global3.c.x << (abs(var_0.a.x) % 32u))));
}


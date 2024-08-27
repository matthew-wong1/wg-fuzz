struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: bool,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 1>;

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec3<i32>(-4069i, i32(-2147483648), -5319i)), Struct_3(vec3<i32>(21908i, 1i, 75911i)), Struct_3(vec3<i32>(19195i, 0i, 0i)), Struct_3(vec3<i32>(5963i, i32(-2147483648), -8209i)), Struct_3(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i)), Struct_3(vec3<i32>(22504i, 18582i, -46342i)), Struct_3(vec3<i32>(33934i, -46538i, -1i)), Struct_3(vec3<i32>(7420i, 24455i, 27907i)), Struct_3(vec3<i32>(1i, -1i, 13290i)), Struct_3(vec3<i32>(2147483647i, 1908i, 38507i)), Struct_3(vec3<i32>(-1912i, 89735i, 2147483647i)), Struct_3(vec3<i32>(i32(-2147483648), 55276i, 15178i)), Struct_3(vec3<i32>(i32(-2147483648), 1i, 2147483647i)), Struct_3(vec3<i32>(0i, -1i, i32(-2147483648))), Struct_3(vec3<i32>(-39571i, -62101i, 25396i)), Struct_3(vec3<i32>(-13081i, -1i, -11287i)), Struct_3(vec3<i32>(1i, 25394i, 616i)), Struct_3(vec3<i32>(4665i, -27603i, -1i)), Struct_3(vec3<i32>(1i, 1i, i32(-2147483648))), Struct_3(vec3<i32>(-1i, -1i, -32305i)));

var<private> global3: array<Struct_3, 26>;

var<private> global4: vec2<u32> = vec2<u32>(29107u, 11759u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2) -> u32 {
    var var_0 = 873f;
    var var_1 = !vec3<bool>(all(arg_0.d.xx), true, arg_0.d.x);
    let var_2 = -713f;
    global2 = array<Struct_3, 20>();
    global4 = min(vec2<u32>(~(~(global4.x ^ 45792u)), min(min(abs(48455u), ~40285u), global4.x)), u_input.d.zy);
    return ~(~10509u);
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_dot_vec2_u32(firstLeadingBit(~(~(~u_input.a))), _wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(4294967295u, 8972u)), vec2<u32>(~(~u_input.a.x), min(func_3(Struct_4(global1[_wgslsmith_index_u32(u_input.e, 1u)], 669u, true, vec4<bool>(false, true, false, false), Struct_3(vec3<i32>(13429i, u_input.b.x, u_input.b.x))), Struct_2(u_input.a.x, -1i, global4.x, vec2<f32>(157f, global1[_wgslsmith_index_u32(global4.x, 1u)]))), 0u)), ~u_input.a >> ((vec2<u32>(global4.x, global4.x) & vec2<u32>(u_input.e, global4.x)) % vec2<u32>(32u))));
    let var_1 = vec2<u32>(firstLeadingBit((_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) ^ _wgslsmith_clamp_u32(92u, u_input.d.x, u_input.e)) ^ ~global4.x), ~u_input.d.x);
    var var_2 = abs(countOneBits(vec2<i32>(_wgslsmith_mult_i32(u_input.c.x & 11233i, 2147483647i), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.b.x, 2147483647i), u_input.c.zyx)))));
    var var_3 = !vec2<bool>(_wgslsmith_f_op_f32(step(1349f, _wgslsmith_f_op_f32(trunc(595f)))) < 531f, -var_2.x <= 11758i);
    let var_4 = !vec4<bool>(any(vec2<bool>(any(vec2<bool>(false, true)), false & var_3.x)), true, var_3.x, !any(select(vec4<bool>(var_3.x, var_3.x, true, true), vec4<bool>(var_3.x, false, false, var_3.x), var_3.x)));
    return _wgslsmith_mod_vec2_u32(~max(u_input.a & vec2<u32>(var_1.x, 1u), var_1), vec2<u32>(min(0u, ~39559u), 3790u));
}

fn func_1(arg_0: Struct_4) -> Struct_4 {
    global3 = array<Struct_3, 26>();
    var var_0 = global3[_wgslsmith_index_u32(abs(~(~_wgslsmith_mult_u32(1u, u_input.a.x | global4.x))), 26u)];
    var var_1 = arg_0;
    let var_2 = ~_wgslsmith_add_vec2_u32(func_2(), vec2<u32>(~_wgslsmith_mult_u32(1u, u_input.a.x), ~min(u_input.a.x, 78245u)));
    let var_3 = Struct_3(-vec3<i32>(reverseBits(-27572i), 51535i & _wgslsmith_add_i32(var_1.e.a.x, u_input.b.x), -2147483647i));
    return arg_0;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> bool {
    let var_0 = reverseBits(-_wgslsmith_mod_vec2_i32(select(-vec2<i32>(1i, arg_2.b), u_input.b.zx, !arg_3.d.yy), vec2<i32>(1i, _wgslsmith_add_i32(u_input.c.x, u_input.b.x))));
    global3 = array<Struct_3, 26>();
    var var_1 = true;
    let var_2 = Struct_3(firstLeadingBit(vec3<i32>(~_wgslsmith_dot_vec4_i32(u_input.c, u_input.b), arg_3.e.a.x, arg_3.e.a.x)));
    var_1 = false;
    return true;
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: i32) -> vec4<u32> {
    var var_0 = arg_1;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global4.x, 1u)])), arg_0.x, select(!(!(!vec4<bool>(arg_1, false, false, true))), select(func_1(Struct_4(-1000f, u_input.e, true, vec4<bool>(arg_1, false, arg_1, arg_1), global3[_wgslsmith_index_u32(48267u, 26u)])).d, select(vec4<bool>(arg_1, false, arg_1, false), select(vec4<bool>(true, arg_1, true, false), vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(true, true, arg_1, arg_1)), false), !(arg_1 | false)), -u_input.b.x == _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(arg_2, arg_2, 1i)), u_input.c.wyz)));
    var_0 = false;
    return vec4<u32>(4294967295u, 1u & _wgslsmith_add_u32(u_input.e, _wgslsmith_sub_u32(func_1(Struct_4(global1[_wgslsmith_index_u32(33567u, 1u)], 4294967295u, arg_1, var_1.c, global3[_wgslsmith_index_u32(u_input.d.x, 26u)])).b, firstTrailingBit(1605u))), ~44148u, ~(~countOneBits(abs(global4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_5(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), u_input.c.x), countOneBits(u_input.b.x) >> (_wgslsmith_dot_vec2_u32(u_input.d.xz, vec2<u32>(u_input.d.x, 4294967295u)) % 32u), ~(~(-2147483647i))), func_4(vec3<i32>(0i, 33339i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, -1i), vec3<i32>(u_input.b.x, u_input.c.x, u_input.c.x))), func_1(Struct_4(970f, 48279u, false, vec4<bool>(false, true, false, true), Struct_3(u_input.b.wxw))), Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global4.x, 1u)] * global1[_wgslsmith_index_u32(35617u, 1u)]), ~u_input.c.x, select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false))), Struct_4(global1[_wgslsmith_index_u32(global4.x, 1u)], ~global4.x, true, select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false), func_1(Struct_4(-114f, global4.x, true, vec4<bool>(true, true, false, true), Struct_3(u_input.c.xxz))).e)), 1i), u_input.d.xx);
}


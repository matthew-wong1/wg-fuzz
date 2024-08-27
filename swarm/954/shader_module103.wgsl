struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_1, 21>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>) -> vec2<bool> {
    var var_0 = ~(vec4<u32>(global0.a.b.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.b.d.x, u_input.b, 96750u, 47112u), firstLeadingBit(vec4<u32>(global0.a.b.d.x, 56869u, 1u, 1u))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, 45979u), global0.a.a.d, global0.a.a.b.x), vec2<u32>(56202u, u_input.b)), _wgslsmith_sub_u32(global0.b.a.d.x, 0u)) ^ (_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 29217u, 90244u, global0.b.a.d.x), vec4<u32>(0u, 28426u, 4294967295u, u_input.b)), select(vec4<u32>(36731u, 4294967295u, 0u, 22005u), vec4<u32>(38051u, 6488u, global0.b.a.d.x, u_input.b), true)) & ((vec4<u32>(48479u, 6102u, u_input.b, 4294967295u) & vec4<u32>(u_input.b, 5715u, u_input.b, u_input.b)) & vec4<u32>(37111u, global0.a.a.d.x, global0.b.a.d.x, u_input.b))));
    let var_1 = abs(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, -2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(-7563i, u_input.a.x), vec2<i32>(global1.x, 2147483647i))), reverseBits(0i), abs(firstLeadingBit(global1.x)), reverseBits(2147483647i) >> (u_input.b % 32u)), select(select(vec4<i32>(global1.x, 2147483647i, 0i, 0i), firstLeadingBit(vec4<i32>(global1.x, 1i, -18898i, global1.x)), any(vec3<bool>(false, false, false))), -vec4<i32>(-1i, -1i, 0i, global1.x) ^ ~vec4<i32>(27906i, u_input.a.x, global1.x, global1.x), global0.b.a.b)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-689f, 553f, arg_0.x, -1226f), arg_0))))))) + _wgslsmith_f_op_vec4_f32(arg_0 * arg_0));
    var var_3 = vec4<u32>(1u, select(0u, u_input.b, global0.b.b.c.x), reverseBits(_wgslsmith_dot_vec3_u32(var_0.zyx << (var_0.wyx % vec3<u32>(32u)), var_0.zxx)) ^ global0.a.b.d.x, global0.b.b.d.x & max(u_input.b, _wgslsmith_dot_vec2_u32(max(vec2<u32>(var_0.x, var_0.x), var_0.zz), max(var_0.yw, var_0.zx))));
    let var_4 = -194f;
    return vec2<bool>(any(!global0.a.b.c.xx), global0.a.a.b.x);
}

fn func_2() -> f32 {
    global0 = Struct_3(Struct_2(global0.c, Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.e.xz))), select(global0.d, vec4<bool>(true, true, global0.d.x, true), false), vec3<bool>(all(global0.d.yxx), true, true), vec2<u32>(select(0u, 15731u, global0.c.c.x), u_input.b)), vec3<bool>((global0.a.c.x != false) | all(global0.d), true, !global0.a.a.c.x | true)), Struct_2(global2[_wgslsmith_index_u32(~global0.b.b.d.x, 21u)], global2[_wgslsmith_index_u32(select(_wgslsmith_add_u32(~u_input.b, 45007u), _wgslsmith_clamp_u32(~global0.a.a.d.x, ~4294967295u, ~1u), global0.b.a.b.x), 21u)], vec3<bool>(global0.a.a.c.x, all(func_3(vec4<f32>(234f, -1236f, -872f, 1655f))), 224f >= global0.c.a.x)), Struct_1(global0.e.yy, !select(!global0.b.a.b, !vec4<bool>(global0.a.a.c.x, global0.b.c.x, false, false), true), vec3<bool>(!(!global0.b.b.c.x), global0.c.b.x, all(select(vec4<bool>(global0.b.a.c.x, false, false, true), global0.c.b, global0.d.x))), ~vec2<u32>(4294967295u, 1u)), vec4<bool>(any(select(vec4<bool>(global0.c.b.x, false, global0.d.x, global0.a.c.x), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, global0.d.x, true), global0.d), global0.b.a.b)), all(select(vec3<bool>(global0.c.b.x, global0.c.c.x, global0.a.b.b.x), global0.c.c, vec3<bool>(true, global0.c.c.x, global0.d.x))) && global0.d.x, false, global0.a.c.x), global0.e);
    let var_0 = !select(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.a.x, -1272f, 547f, global0.c.a.x)))), func_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(632f, 776f, -2620f, global0.a.b.a.x), vec4<f32>(923f, global0.b.a.a.x, global0.c.a.x, global0.a.a.a.x)))), vec2<bool>(true, 1i != u_input.a.x));
    global1 = max(select(vec2<i32>(global1.x, countOneBits(-1i)) ^ ~u_input.a, _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, u_input.a), u_input.a), vec2<bool>(-u_input.a.x == 1i, true)), ~vec2<i32>(global1.x, u_input.a.x));
    let var_1 = -305f;
    global2 = array<Struct_1, 21>();
    return -529f;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<bool>, arg_3: u32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.a.a.x - _wgslsmith_f_op_f32(min(1246f, 1000f))), arg_0.a.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - 1591f)) + -2191f);
    var var_1 = !arg_0.b;
    var var_2 = Struct_3(global0.b, Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_3, select(global0.b.b.d.x, 607u, false) & arg_0.d.x), 21u)], global2[_wgslsmith_index_u32(1u, 21u)], !vec3<bool>(true, !var_1.x, any(vec4<bool>(false, global0.c.b.x, true, true)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-219f, 1171f))), !global0.c.b, select(!select(arg_0.c, vec3<bool>(true, true, arg_0.b.x), vec3<bool>(arg_0.c.x, global0.c.b.x, global0.d.x)), select(select(global0.a.c, global0.c.c, arg_2.x), var_1.xyw, arg_0.b.ywy), !select(vec3<bool>(global0.a.b.b.x, false, false), arg_0.c, false)), firstLeadingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(11070u, 1u), vec2<u32>(1u, global0.c.d.x)))), !(!select(vec4<bool>(var_1.x, arg_0.b.x, false, var_1.x), global0.c.b, vec4<bool>(true, global0.b.a.c.x, true, arg_2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.b.a.x, -643f, arg_0.a.x) + _wgslsmith_f_op_vec3_f32(floor(global0.e)))) - _wgslsmith_f_op_vec3_f32(floor(global0.e))));
    var var_3 = ~u_input.b;
    let var_4 = false;
    return arg_1.yx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = max(func_1(global0.b.a, vec4<i32>(max(21050i, 2147483647i), u_input.a.x, 13266i, -_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 0i, u_input.a.x), vec3<i32>(-1449i, u_input.a.x, global1.x))), select(vec2<bool>(true, true), select(global0.a.b.b.wx, global0.b.a.c.xz, global0.d.x & global0.c.c.x), global0.d.wz), _wgslsmith_clamp_u32(0u, 17941u, 43462u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 0u), vec3<u32>(16884u, global0.b.a.d.x, u_input.b)) % 32u))), -u_input.a);
    let var_0 = !global0.b.c.x;
    global0 = Struct_3(global0.a, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e.x, 221f)), vec4<bool>(true | global0.a.a.b.x, !var_0, select(var_0, true, global0.d.x), true), global0.c.c, _wgslsmith_mod_vec2_u32(abs(global0.b.b.d), select(global0.c.d, global0.b.b.d, global0.a.b.b.x))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-global0.c.a.x), -667f), select(!global0.b.b.b, global0.b.a.b, var_0), select(!vec3<bool>(global0.a.a.c.x, global0.a.c.x, true), !vec3<bool>(true, global0.a.a.b.x, true), global0.d.x), vec2<u32>(~2871u, global0.b.a.d.x << (global0.b.b.d.x % 32u))), global0.d.zxx), global0.a.b, !vec4<bool>(var_0 && true, true, true, false), global0.e);
    let var_1 = vec2<i32>(global1.x, -1i);
    var var_2 = vec3<u32>(~(_wgslsmith_sub_u32(u_input.b, 1u) & ~select(global0.c.d.x, global0.c.d.x, global0.c.c.x)), 61702u, global0.a.a.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(0u, -(vec4<i32>(u_input.a.x, 2147483647i, _wgslsmith_mult_i32(var_1.x, var_1.x), -var_1.x) | ~max(vec4<i32>(-1i, global1.x, global1.x, global1.x), vec4<i32>(global1.x, global1.x, -33598i, -33552i))), vec2<i32>(~1i, -_wgslsmith_clamp_i32(33470i, -44705i, -2147483647i)) ^ select(_wgslsmith_div_vec2_i32(u_input.a, u_input.a), _wgslsmith_div_vec2_i32(u_input.a, var_1) >> ((vec2<u32>(u_input.b, u_input.b) << (global0.c.d % vec2<u32>(32u))) % vec2<u32>(32u)), false), -845f);
}


struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18> = array<u32, 18>(48398u, 4294967295u, 16752u, 0u, 4294967295u, 4294967295u, 4294967295u, 14035u, 1u, 24807u, 44758u, 1u, 0u, 73472u, 1u, 20360u, 0u, 0u);

var<private> global1: array<f32, 3> = array<f32, 3>(-232f, 132f, 1000f);

var<private> global2: array<bool, 17>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = Struct_5(Struct_1(!(!select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 17u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 18u)], 18u)], 17u)]), vec2<bool>(false, false), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 17u)])), u_input.a & firstLeadingBit(u_input.a), vec3<bool>(true | all(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 17u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 17u)])), any(!vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 17u)], global2[_wgslsmith_index_u32(4294967295u, 17u)])), true), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56159u, 18u)], 3u)] - 425f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(4294967295u, 3u)]))), 208f, -370f)), countOneBits(-u_input.c) | _wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(0i << (0u % 32u), ~16923i, u_input.c.x ^ 1i)), true, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.b.x, 3u)]))) - global1[_wgslsmith_index_u32(4294967295u, 3u)]), 1778u ^ global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(0u, 0u, 1u)) & ~32870u, 18u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18164u, 18u)], 3u)])), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 18u)], 3u)], global1[_wgslsmith_index_u32(12243u, 3u)]))), vec3<bool>(global2[_wgslsmith_index_u32(0u >> (min(global0[_wgslsmith_index_u32(1u, 18u)], u_input.d.x) % 32u), 17u)], global2[_wgslsmith_index_u32(u_input.d.x, 17u)], !(false == global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43394u, 18u)], 17u)]))), !any(select(select(vec2<bool>(false, false), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 17u)]), true), vec2<bool>(true, false), !vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 17u)], global2[_wgslsmith_index_u32(1u, 17u)]))));
    let var_1 = var_0;
    global0 = array<u32, 18>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.c.x, var_0.a.d.x, -361f, global1[_wgslsmith_index_u32(6666u, 3u)])) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-978f, 997f, global1[_wgslsmith_index_u32(u_input.d.x, 3u)], var_1.d.c.x), vec4<f32>(var_1.d.c.x, var_0.d.c.x, 1688f, 641f), false)))))));
    let var_3 = false;
    return reverseBits(_wgslsmith_dot_vec4_u32(max(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(var_1.d.b, 20073u, 1u, 18290u)), vec4<u32>(31091u, 0u, 1u, var_0.d.b)), min(vec4<u32>(4294967295u, 4294967295u, 1u, 74334u), vec4<u32>(var_0.d.b, u_input.b.x, var_0.d.b, 3738u) & vec4<u32>(global0[_wgslsmith_index_u32(var_0.d.b, 18u)], 1u, global0[_wgslsmith_index_u32(1u, 18u)], var_1.d.b))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d.b, u_input.d.x, 1u, var_0.d.b), ~vec4<u32>(var_0.d.b, 2989u, u_input.b.x, var_1.d.b), vec4<u32>(u_input.d.x, u_input.b.x, 16159u, 32513u))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(Struct_1(!(!select(vec2<bool>(true, global2[_wgslsmith_index_u32(105759u, 17u)]), vec2<bool>(false, false), vec2<bool>(false, global2[_wgslsmith_index_u32(28542u, 17u)]))), vec3<i32>(u_input.a.x, 0i, ~u_input.c.x) >> (vec3<u32>(50068u, u_input.b.x, 4294967295u) % vec3<u32>(32u)), !vec3<bool>(all(vec3<bool>(true, false, global2[_wgslsmith_index_u32(73747u, 17u)])), true, select(global2[_wgslsmith_index_u32(61999u, 17u)], false, true)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-550f * global1[_wgslsmith_index_u32(88726u, 3u)]), -639f, 865f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 3u)])))), -(~u_input.c), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(), ~global0[_wgslsmith_index_u32(~select(global0[_wgslsmith_index_u32(18460u, 18u)], 1u, false), 18u)]), 18u)], 17u)], Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~max(u_input.b.x, 39382u), u_input.b.x, select(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], u_input.b.x, global2[_wgslsmith_index_u32(21636u, 17u)]) ^ u_input.b.x), 3u)], 0u | u_input.b.x, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-358f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 3u)]), vec2<f32>(388f, -689f))), vec2<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53285u, 18u)], 18u)], 3u)], -418f))))), vec3<bool>(true, any(vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 17u)])), any(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], global2[_wgslsmith_index_u32(0u, 17u)], global2[_wgslsmith_index_u32(67228u, 17u)])))), _wgslsmith_f_op_f32(abs(-664f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 3u)] * 2096f)), -1183f));
    var_0 = Struct_5(Struct_1(var_0.d.d.yx, countOneBits(~u_input.c), !vec3<bool>(!global2[_wgslsmith_index_u32(0u, 17u)], false, true), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d.c.x))), 1f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(1u, 3u)])))))), -(u_input.c ^ vec3<i32>(-27727i, -u_input.c.x, max(u_input.a.x, u_input.a.x))), !global2[_wgslsmith_index_u32(~(~u_input.b.x), 17u)], Struct_3(2557f, global0[_wgslsmith_index_u32(1615u, 18u)], _wgslsmith_f_op_vec2_f32(var_0.a.d.yx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.c))), select(var_0.d.d, vec3<bool>(true, global2[_wgslsmith_index_u32(40741u, 17u)] & var_0.a.c.x, false), select(vec3<bool>(true, global2[_wgslsmith_index_u32(36477u, 17u)], var_0.d.d.x), !var_0.d.d, vec3<bool>(true, true, true)))), !(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)] ^ 0u, _wgslsmith_mod_u32(35561u, 14240u)) == 4294967295u));
    let var_1 = Struct_2(var_0.a.c.yy, vec3<i32>(reverseBits(~(-u_input.a.x)), _wgslsmith_dot_vec3_i32(var_0.b, var_0.b), 34627i), Struct_1(var_0.d.d.xy, ~vec3<i32>(-1742i, 10096i, ~u_input.a.x), !vec3<bool>(var_0.c && false, global1[_wgslsmith_index_u32(u_input.b.x, 3u)] >= var_0.a.d.x, true), _wgslsmith_f_op_vec4_f32(abs(var_0.a.d))), vec3<bool>(global2[_wgslsmith_index_u32(60328u, 17u)], select(all(vec2<bool>(true, true)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.a.c.x, true, true, var_0.d.d.x), vec4<bool>(var_0.e, var_0.a.c.x, true, true))), !(1909f < var_0.d.c.x)), -1000f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_0.a.d.x))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1.c.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_1.c.d.x, var_1.c.d.x, true)), _wgslsmith_f_op_f32(sign(var_1.c.d.x)), !var_1.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f) * var_0.d.a)))) - vec4<f32>(_wgslsmith_f_op_f32(var_0.a.d.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-700f, 281f))), _wgslsmith_f_op_f32(f32(-1f) * -2267f), -403f, var_0.d.a));
    var var_3 = var_0.d;
    return var_1;
}

fn func_1() -> Struct_2 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 3>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(6460u, 18u)], _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 657u, 4294967295u, 19717u) | vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], u_input.d.x, u_input.d.x), vec4<u32>(4294967295u, 27298u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 18u)], 18u)]))), 3u)] - _wgslsmith_div_f32(-509f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~43988u, 3u)] - _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 18u)], 3u)]))))), _wgslsmith_f_op_f32(f32(-1f) * -2688f));
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    let var_1 = func_1();
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, min(-1i, -2147483647i)), -var_1.b.x, var_1.c.b.x, -1i >> (~global0[_wgslsmith_index_u32(53780u, 18u)] % 32u)), -vec4<i32>(func_1().c.b.x, var_1.b.x, u_input.a.x, var_1.c.b.x)) << (_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, global0[_wgslsmith_index_u32(78602u, 18u)], 53576u, global0[_wgslsmith_index_u32(0u, 18u)])), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(10713u, 1726u, 16323u, 1u), vec4<u32>(95571u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18399u, 18u)], 18u)], 64882u, u_input.d.x), vec4<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 18u)], u_input.d.x, 0u, 54114u)), vec4<u32>(u_input.d.x, global0[_wgslsmith_index_u32(u_input.d.x, 18u)], u_input.d.x, u_input.d.x) | vec4<u32>(global0[_wgslsmith_index_u32(35266u, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 18u)], u_input.b.x, u_input.b.x), !vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 17u)], true, false))), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 29457u, ~(~u_input.b.x), _wgslsmith_sub_u32(u_input.d.x, 47331u) | u_input.b.x)) % vec4<u32>(32u));
    var var_3 = !(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 17u)] != var_1.d.x, var_1.a.x & global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], 17u)], func_1().a.x)));
    var var_4 = func_2().a;
    let var_5 = !vec4<bool>(var_4.x, select(var_1.d.x, var_1.d.x, !global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)] & u_input.d.x, 17u)]), var_4.x, all(!vec3<bool>(false, var_1.d.x, false)) & true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(789f + _wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(161358u, 18u)], 3u)])), _wgslsmith_f_op_f32(609f + _wgslsmith_f_op_f32(681f * global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51770u, 18u)], 3u)]))))));
}


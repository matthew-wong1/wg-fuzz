struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 28>;

var<private> global2: bool = true;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> bool {
    var var_0 = Struct_3(vec4<u32>(~4294967295u, abs(32980u), global0.a.x << (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0.a.x, 17060u, global0.a.x, 4294967295u)), ~vec4<u32>(global0.d.x, global0.a.x, global0.a.x, global0.d.x)) % 32u), global0.a.x), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a.x, 601f, -476f)), vec3<f32>(783f, -1403f, 1285f)), global0.c.b, !vec2<bool>(global0.c.b.x && global1[_wgslsmith_index_u32(global0.a.x, 28u)], global0.b.d.x), vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(global0.d.x, 28u)], false)), !any(global0.c.d.xzz), !(!arg_1.x), select(!arg_1.x, true, true))), global0.c, abs(~(global0.d >> (global0.d % vec4<u32>(32u)))) << (~_wgslsmith_add_vec4_u32(global0.a, vec4<u32>(global0.a.x, global0.d.x, 4294967295u, 54060u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.e.x, u_input.a.x, ~1i, u_input.a.x), select(min(reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)), ~global0.e), select(~vec4<i32>(u_input.a.x, -40319i, 1i, 35385i), ~vec4<i32>(u_input.a.x, global0.e.x, -83511i, 70095i), any(global0.c.b)), arg_1.x)));
    var_0 = Struct_3(vec4<u32>(~(0u << (_wgslsmith_sub_u32(var_0.a.x, 0u) % 32u)), _wgslsmith_clamp_u32(var_0.d.x << (~global0.a.x % 32u), _wgslsmith_mult_u32(0u, ~31983u), var_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, 17515u, 4294967295u, var_0.a.x) ^ abs(var_0.d), ~var_0.d), 0u), global0.b, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(623f - global0.c.a.x), _wgslsmith_f_op_f32(floor(-2510f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.b.a.x))))), select(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.a.x, 28u)], var_0.b.b.x, var_0.c.d.x), select(vec3<bool>(true, true, true), global0.c.b, !global1[_wgslsmith_index_u32(var_0.a.x, 28u)]), !select(vec3<bool>(var_0.b.d.x, true, var_0.b.c.x), vec3<bool>(arg_1.x, false, var_0.c.b.x), var_0.c.d.yxz)), !vec2<bool>(false, all(var_0.b.d)), select(!select(var_0.b.d, vec4<bool>(false, false, var_0.b.b.x, false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(var_0.a.x, 28u)], global0.c.d.x)), global0.b.d, true)), var_0.a, select(global0.e, global0.e, vec4<bool>(true, all(vec3<bool>(true, false, true)), true, arg_0)));
    var var_1 = Struct_2(34690u, var_0.b, 29540u);
    return false;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec3<f32>, arg_3: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, -40001i, u_input.a.x), -40389i, select(0i, -15825i, false)), vec3<i32>(global0.e.x, -2147483647i, global0.e.x), vec3<i32>(global0.e.x, i32(-1i) * -_wgslsmith_dot_vec4_i32(global0.e, global0.e), reverseBits(u_input.a.x)));
    var var_1 = vec3<u32>(63759u, max(1u, _wgslsmith_sub_u32(_wgslsmith_add_u32(9370u, reverseBits(global0.d.x)), 0u)), abs(global0.a.x));
    let var_2 = abs(-u_input.a);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(626f * 1395f), _wgslsmith_f_op_f32(round(arg_2.x)))), _wgslsmith_f_op_f32(ceil(arg_1))))), 448f);
    var var_4 = all(global0.c.b);
    return all(arg_3);
}

fn func_2(arg_0: Struct_2) -> f32 {
    let var_0 = select(!global0.c.d.zzx, global0.b.b, any(arg_0.b.d.xxy));
    global2 = !func_4(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.b.a.x, _wgslsmith_div_f32(arg_0.b.a.x, global0.b.a.x)), _wgslsmith_f_op_f32(select(-474f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), false))), _wgslsmith_div_f32(arg_0.b.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global0.c.a.x)), -543f, func_3(true, vec2<bool>(global1[_wgslsmith_index_u32(arg_0.a, 28u)], arg_0.b.b.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b.a))), global0.b.b);
    var var_1 = Struct_3(_wgslsmith_mult_vec4_u32(min(~(~vec4<u32>(global0.a.x, global0.a.x, arg_0.c, 53458u)), global0.d), firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.d.x, 72510u, 0u, global0.a.x), global0.d), global0.d))), arg_0.b, arg_0.b, vec4<u32>(arg_0.a, abs(1u), ~global0.d.x, 30829u | global0.d.x), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(global0.e, vec4<i32>(1527i, -1i, 13932i, 31874i), global0.e << (vec4<u32>(global0.d.x, 65933u, arg_0.a, global0.a.x) % vec4<u32>(32u))), global0.e) | _wgslsmith_add_vec4_i32(-(vec4<i32>(-1i, global0.e.x, 27824i, 42225i) << (global0.a % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.e.x, 1i, global0.e.x, 2147483647i) ^ global0.e, global0.e | global0.e)));
    var var_2 = countOneBits(-var_1.e.x);
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0.c.a.x))));
    return _wgslsmith_f_op_f32(floor(var_3));
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = !(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, ~_wgslsmith_div_u32(0u, global0.d.x)), 28u)] || global1[_wgslsmith_index_u32(arg_0, 28u)]);
    var var_1 = global0.c.a.x;
    var var_2 = arg_0 ^ _wgslsmith_add_u32(~arg_0, ~44543u);
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1579f, global0.b.a.x, global0.c.a.x, 1306f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(299f, -257f, 2577f, global0.c.a.x) + vec4<f32>(-247f, global0.b.a.x, 1698f, -469f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1007f, 995f, 1000f, 1310f))))))));
    var_0 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2(Struct_2(10504u, global0.c, arg_0))))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1429f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(min(global0.d.x, ~4294967295u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(global0.a, vec4<u32>(global0.a.x, global0.d.x, global0.a.x, 4294967295u) >> (vec4<u32>(global0.a.x, 61284u, 60421u, global0.d.x) % vec4<u32>(32u))), global0.d));
    let var_1 = Struct_2(4294967295u, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-459f, _wgslsmith_div_f32(global0.b.a.x, -654f), _wgslsmith_f_op_f32(func_1(global0.d.x))))), vec3<bool>(global1[_wgslsmith_index_u32(~1u, 28u)], func_4(_wgslsmith_f_op_f32(exp2(global0.b.a.x)), _wgslsmith_f_op_f32(func_2(Struct_2(var_0, global0.c, 18889u))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.c.a.x, -388f, 1388f))), select(vec3<bool>(true, global1[_wgslsmith_index_u32(global0.a.x, 28u)], global1[_wgslsmith_index_u32(global0.d.x, 28u)]), global0.c.b, false)), !all(vec3<bool>(global0.c.d.x, global0.c.b.x, false))), select(select(global0.b.d.yx, select(global0.b.b.xz, vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 28u)]), true), !global1[_wgslsmith_index_u32(global0.d.x, 28u)]), vec2<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0, global0.a.x), 28u)]), vec2<bool>(var_0 < 38772u, true)), select(select(global0.c.d, vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 28u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(var_0, 28u)], true, global1[_wgslsmith_index_u32(global0.a.x, 28u)], false)), vec4<bool>(global0.b.c.x, global1[_wgslsmith_index_u32(14281u, 28u)] || true, true, false), !global0.b.d)), ~70966u);
    let var_2 = global0.c.d.x;
    let var_3 = _wgslsmith_f_op_f32(trunc(1000f));
    let var_4 = Struct_1(global0.b.a, global0.c.d.www, !select(var_1.b.d.yw, select(!vec2<bool>(true, global0.c.b.x), !global0.c.d.wx, var_1.b.d.yy), global0.c.d.x), select(vec4<bool>(true, true, false, true), vec4<bool>(_wgslsmith_f_op_f32(func_2(var_1)) <= 1154f, var_1.b.b.x, global0.c.c.x, var_1.b.d.x), !global0.c.d));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(global0.e.x, 25070i, -2374i)), max(vec3<i32>(u_input.a.x, u_input.a.x, 1i), global0.e.wzy)) & global0.e.xyz, vec3<i32>(~(~u_input.a.x) ^ 2497i, abs(u_input.a.x), global0.e.x));
}


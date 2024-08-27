struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11> = array<vec2<i32>, 11>(vec2<i32>(1i, 7652i), vec2<i32>(0i, 47246i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-66681i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(-25796i, 8575i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(47077i, 0i), vec2<i32>(4538i, 2147483647i), vec2<i32>(-275i, 2147483647i));

var<private> global1: array<i32, 14> = array<i32, 14>(-21i, i32(-2147483648), i32(-2147483648), -1i, 4734i, 0i, 4674i, 0i, -56302i, 23312i, 2147483647i, -1771i, i32(-2147483648), 2147483647i);

var<private> global2: array<u32, 5>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<u32>(~(~abs(max(4294967295u, global2[_wgslsmith_index_u32(51866u, 5u)]))), 1u);
    var_0 = firstTrailingBit(abs(vec2<u32>(4294967295u | var_0.x, var_0.x << (0u % 32u))) >> (vec2<u32>(var_0.x, ~u_input.c) % vec2<u32>(32u)));
    var_0 = u_input.d;
    global2 = array<u32, 5>();
    let var_1 = Struct_1(~(-2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1869f, _wgslsmith_f_op_f32(floor(151f)), all(vec3<bool>(false, false, true)) && select(true, false, true)))));
    return Struct_2(var_1, Struct_1(_wgslsmith_mod_i32(var_1.a, var_1.a), var_1.b));
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: f32) -> Struct_2 {
    let var_0 = func_2();
    return Struct_2(func_2().a, Struct_1(-(~_wgslsmith_div_i32(0i, arg_0.c.x)), 1601f));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> u32 {
    var var_0 = ~(vec4<i32>(~arg_1.a.a, ~arg_3.a >> (global2[_wgslsmith_index_u32(~1u, 5u)] % 32u), -3569i, func_1(Struct_3(Struct_2(arg_1.a, arg_1.a), vec3<f32>(340f, 147f, arg_3.b), vec2<i32>(global1[_wgslsmith_index_u32(0u, 14u)], 11365i)), true, -100f).b.a) & ~_wgslsmith_div_vec4_i32(vec4<i32>(-1186i, 51829i, u_input.b, arg_1.b.a) ^ vec4<i32>(-2147483647i, -1i, arg_2, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22465u, 5u)], 14u)]), -vec4<i32>(-18042i, arg_3.a, global1[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(u_input.d.x, 14u)])));
    let var_1 = Struct_4(Struct_3(arg_1, vec3<f32>(arg_1.a.b, -325f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.a.b * -372f), _wgslsmith_div_f32(arg_1.a.b, 2370f)))), -vec2<i32>(16968i, 2147483647i)), false);
    let var_2 = Struct_3(Struct_2(arg_3, func_2().b), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_1.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(196f, 733f, var_1.a.b.x))) - vec3<f32>(-497f, 100f, 1000f))))), ~var_0.xy);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b.x - 587f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-536f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-308f - 426f)))));
    global1 = array<i32, 14>();
    return _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c), ~u_input.d);
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    var var_0 = true;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.b * arg_0.a.b), _wgslsmith_f_op_f32(arg_0.b.b - -817f));
    global1 = array<i32, 14>();
    var var_2 = vec3<u32>(arg_1, global2[_wgslsmith_index_u32(~(~(~1u)), 5u)], 36203u);
    var var_3 = abs(select(vec4<u32>(~0u, abs(22435u), var_2.x, _wgslsmith_clamp_u32(1u, arg_1, 0u) & arg_1), ~vec4<u32>(~u_input.a, _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39835u, 5u)], 5u)], 0u), arg_1, _wgslsmith_add_u32(var_2.x, arg_1)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, false)))));
    return Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-669f, var_1.x, var_1.x) + vec3<f32>(arg_0.b.b, arg_0.a.b, arg_0.b.b)), _wgslsmith_div_vec3_f32(vec3<f32>(766f, 339f, arg_0.a.b), vec3<f32>(-1000f, -1000f, var_1.x)))))), firstTrailingBit(vec2<i32>(-(~arg_0.a.a), -21112i)));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: Struct_4, arg_3: Struct_2) -> Struct_1 {
    global2 = array<u32, 5>();
    let var_0 = arg_3.a.b;
    let var_1 = Struct_4(arg_2.a, false);
    let var_2 = 4294967295u;
    let var_3 = arg_3.a;
    return Struct_1(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.a.b.x)) - arg_2.a.a.b.b)) + var_1.a.a.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(!(_wgslsmith_mod_i32(u_input.b, -58445i) != _wgslsmith_clamp_i32(-24146i, -42421i, global1[_wgslsmith_index_u32(1786u, 14u)])), global2[_wgslsmith_index_u32(0u, 5u)], Struct_4(func_4(func_1(Struct_3(Struct_2(Struct_1(u_input.b, -2073f), Struct_1(global1[_wgslsmith_index_u32(1u, 14u)], 691f)), vec3<f32>(-1253f, 1549f, -389f), vec2<i32>(1i, global1[_wgslsmith_index_u32(37468u, 14u)])), true, 567f), func_3(vec3<bool>(true, true, true), Struct_2(Struct_1(u_input.b, -1074f), Struct_1(34446i, 291f)), u_input.b, Struct_1(-4693i, 170f))), all(vec2<bool>(true, true))), func_1(func_4(func_4(Struct_2(Struct_1(u_input.b, -181f), Struct_1(0i, -488f)), u_input.c).a, 37815u ^ global2[_wgslsmith_index_u32(1u, 5u)]), true, 1397f)), Struct_1(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~abs(global2[_wgslsmith_index_u32(u_input.c, 5u)]), 14u)], 0i), 1f));
    let var_1 = Struct_4(Struct_3(Struct_2(func_4(var_0, global2[_wgslsmith_index_u32(~21204u, 5u)]).a.b, Struct_1(var_0.a.a, _wgslsmith_div_f32(var_0.a.b, var_0.a.b))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1552f, -817f, var_0.a.b)))))), abs(global0[_wgslsmith_index_u32(u_input.c | abs(0u), 11u)])), false);
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.c, 5u)], 54153u), 14u)];
    let var_3 = 71649i;
    var var_4 = vec3<i32>(abs(1i), 55712i, var_0.b.a);
    let var_5 = vec4<i32>(_wgslsmith_add_i32(2147483647i, _wgslsmith_add_i32(-var_1.a.a.b.a, -var_4.x)) & global1[_wgslsmith_index_u32(42055u, 14u)], u_input.b, _wgslsmith_div_i32(var_1.a.a.b.a, 18104i), firstLeadingBit(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.a, _wgslsmith_mod_vec2_i32(abs(firstTrailingBit(var_4.yz) | vec2<i32>(14403i, 1i)), min(vec2<i32>(-1i, var_0.a.a), ~var_1.a.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(474f, _wgslsmith_f_op_f32(-158f - -264f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b)))), u_input.b);
}


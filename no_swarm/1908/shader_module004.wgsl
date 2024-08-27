struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, false, true));

var<private> global1: array<i32, 29>;

var<private> global2: vec3<i32> = vec3<i32>(-1i, i32(-2147483648), -2531i);

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, true, false, false)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<u32> {
    let var_0 = vec2<bool>(false, true);
    global3 = array<Struct_1, 2>();
    let var_1 = vec2<u32>(29379u, u_input.c.x);
    let var_2 = global3[_wgslsmith_index_u32(31878u, 2u)];
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(967f, _wgslsmith_f_op_f32(496f - -129f))), 950f)) <= 659f;
    return ~reverseBits(var_1);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<f32> {
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~arg_0.yzz), arg_0.zyy), 2u)];
    let var_0 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(~arg_0.zx), ~firstTrailingBit(~abs(arg_0.xy)), select(_wgslsmith_mod_vec2_u32(u_input.c.wy, u_input.c.zy), ~(~(~u_input.c.yy)), false));
    global1 = array<i32, 29>();
    let var_1 = !any(vec2<bool>(global0.a.x, ~u_input.c.x >= 12884u));
    global1 = array<i32, 29>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(799f * 1729f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-126f)))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-617f, _wgslsmith_f_op_f32(1826f * -940f))))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -660f);
    let var_1 = _wgslsmith_dot_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(global2.x, -3946i)) << (_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 42245u) & u_input.c.wx, min(vec2<u32>(4294967295u, u_input.b), vec2<u32>(22198u, 1u))), vec2<u32>(abs(1u), u_input.b & 4294967295u)) % vec2<u32>(32u)), -_wgslsmith_sub_vec2_i32(global2.zz & vec2<i32>(2147483647i, 48370i), _wgslsmith_sub_vec2_i32(global2.xz, abs(vec2<i32>(-2147483647i, u_input.a)))));
    let var_2 = vec3<f32>(2006f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-173f * 1000f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1155f) - _wgslsmith_f_op_f32(trunc(-147f)))))));
    let var_3 = global3[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(u_input.c.wzy, ~(~vec3<u32>(49920u, 46218u, 0u))) ^ ~u_input.c.x, u_input.c.x), 2u)];
    let var_4 = _wgslsmith_f_op_vec2_f32(func_4(firstTrailingBit(u_input.c), global3[_wgslsmith_index_u32(~28205u, 2u)], countOneBits(select(global2.xy, global2.yx, vec2<bool>(false, var_3.a.x)) >> (func_3() % vec2<u32>(32u))) | vec2<i32>(18679i, global1[_wgslsmith_index_u32(reverseBits(53018u) | u_input.b, 29u)])));
    return Struct_1(!(!(!var_3.a)));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = func_2();
    let var_1 = min(abs(countOneBits(vec3<i32>(2147483647i, 1396i, -42389i))) >> (~(~u_input.c.xxx | vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u)), vec3<i32>(global2.x, global1[_wgslsmith_index_u32(~1u, 29u)], u_input.a));
    let var_2 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(round(287f)) < _wgslsmith_f_op_f32(f32(-1f) * -194f), arg_0.a.x, !all(select(arg_0.a.ww, vec2<bool>(false, false), global0.a.xz)), select(_wgslsmith_div_u32(u_input.b, u_input.b), countOneBits(u_input.b), any(vec2<bool>(var_0.a.x, false))) != u_input.c.x));
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    var var_4 = u_input.c.x;
    return _wgslsmith_mod_vec4_i32(~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global2.x, 1i, 0i, 1i), vec4<i32>(-1i, 2147483647i, 27721i, 1i)) >> (u_input.c % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(global2.x, var_1.x, -2147483647i, 9800i) & vec4<i32>(0i, var_1.x, var_1.x, global2.x), reverseBits(vec4<i32>(0i, -7862i, global2.x, u_input.a)))), abs(min(reverseBits(abs(vec4<i32>(-19830i, var_1.x, 14286i, global1[_wgslsmith_index_u32(13836u, 29u)]))), reverseBits(~vec4<i32>(var_1.x, global1[_wgslsmith_index_u32(19107u, 29u)], 1i, 14513i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec4<bool>(all(select(vec2<bool>(true, false), global0.a.xw, global0.a.x)), _wgslsmith_f_op_f32(sign(-1134f)) > _wgslsmith_f_op_f32(select(-200f, 1326f, true)), false, true));
    var var_1 = var_0;
    var var_2 = func_1(Struct_1(var_0.a));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~(~(~u_input.c.x)) << (u_input.b % 32u)), 2u)];
    let var_4 = u_input.c;
    let var_5 = Struct_1(global0.a);
    var var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(588f, 2378f), vec2<f32>(-1126f, 279f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1142f, 164f) * vec2<f32>(1191f, -114f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1537f + -388f)), -501f)));
    var_3 = var_5;
    var var_7 = Struct_1(select(vec4<bool>(var_0.a.x, true, !(var_4.x == 34308u), !var_3.a.x), var_1.a, !var_1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(1f + 2043f), _wgslsmith_f_op_f32(-var_6.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(475f, var_6.x)), _wgslsmith_f_op_f32(var_6.x * _wgslsmith_div_f32(-307f, -585f))))), u_input.a);
}


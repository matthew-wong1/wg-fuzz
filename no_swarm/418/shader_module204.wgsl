struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 53150u;

var<private> global1: array<f32, 10>;

var<private> global2: Struct_1;

var<private> global3: array<f32, 19>;

var<private> global4: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = !(_wgslsmith_mod_u32(0u, reverseBits(arg_1) << (firstLeadingBit(75128u) % 32u)) > 4294967295u);
    global1 = array<f32, 10>();
    global4 = ~(((_wgslsmith_add_u32(20251u, arg_1) & 34376u) << (max(u_input.b.x, ~arg_1) % 32u)) << (0u % 32u));
    let var_1 = arg_2;
    var var_2 = ~_wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.b.x, 30390u) << ((u_input.b.ww >> (u_input.b.zw % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.b.xz, !var_1.a.xw), ~(u_input.b.wz & ~u_input.b.yw));
    return vec3<bool>(any(vec4<bool>(!var_0, true, var_1.a.x, arg_0.a.x)), select(all(select(select(var_1.a.yz, vec2<bool>(arg_0.a.x, true), false), global2.a.yw, arg_2.a.xw)), arg_0.a.x, false | var_0), false);
}

fn func_2() -> vec3<u32> {
    let var_0 = global2.a.x;
    var var_1 = select(!func_3(Struct_1(global2.a, global2.b, u_input.d >> (u_input.e % 32u), vec2<f32>(global2.e, -132f), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(31378u, 19u)]))), u_input.b.x, Struct_1(vec4<bool>(false, global2.a.x, false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-182f, global3[_wgslsmith_index_u32(u_input.b.x, 19u)], global3[_wgslsmith_index_u32(61032u, 19u)])), ~1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(455f, 319f) * global2.d), _wgslsmith_f_op_f32(-global2.b.x))), func_3(Struct_1(!(!global2.a), _wgslsmith_f_op_vec3_f32(-global2.b), 2147483647i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, global3[_wgslsmith_index_u32(68703u, 19u)]), global2.b.yy)))), 1f), 1728u, Struct_1(!(!vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-347f, -256f, 110f), global2.b)), firstTrailingBit(~2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global2.d)) * _wgslsmith_div_vec2_f32(global2.b.zz, global2.b.zx)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(firstLeadingBit(24666u), 19u)] - global2.b.x))), func_3(Struct_1(global2.a, vec3<f32>(1137f, -347f, _wgslsmith_f_op_f32(floor(global2.d.x))), abs(u_input.a), global2.b.yz, -1429f), u_input.e, Struct_1(vec4<bool>(all(global2.a.yy), true, true, select(false, global2.a.x, true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b), _wgslsmith_f_op_vec3_f32(-global2.b)), u_input.a, _wgslsmith_div_vec2_f32(global2.b.xz, _wgslsmith_f_op_vec2_f32(global2.b.zz + vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], 189f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(456f, 746f) - global1[_wgslsmith_index_u32(0u & u_input.b.x, 10u)]))));
    global1 = array<f32, 10>();
    var var_2 = abs(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(0i, 2147483647i, u_input.a), vec3<i32>(-10808i, global2.c, -23518i)), firstLeadingBit(u_input.c)), ~u_input.c));
    var_2 = firstLeadingBit(_wgslsmith_div_vec3_i32(-select(vec3<i32>(29394i, -3071i, -2147483647i) ^ vec3<i32>(-1i, -1i, global2.c), vec3<i32>(-130510i, 0i, 0i), vec3<bool>(true, true, false)), vec3<i32>(_wgslsmith_add_i32(-1i, var_2.x), _wgslsmith_div_i32(abs(var_2.x), 47871i), u_input.a)));
    return u_input.b.wzx;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = !vec3<bool>(global2.a.x, true, global2.a.x);
    let var_1 = var_0.yx;
    global3 = array<f32, 19>();
    let var_2 = true;
    global2 = Struct_1(select(select(vec4<bool>(false, global2.c == -2921i, all(vec2<bool>(var_0.x, global2.a.x)), false), vec4<bool>(false, false & var_0.x, false, var_0.x), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(29371u, 10u)])) > 1438f), global2.a, global2.a), _wgslsmith_f_op_vec3_f32(floor(global2.b)), ~16330i, global2.d, 1768f);
    return Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(global2.b)))))), _wgslsmith_dot_vec4_i32(vec4<i32>(abs(global2.c & -2147483647i), -u_input.a, _wgslsmith_add_i32(max(u_input.a, u_input.a), global2.c), _wgslsmith_mult_i32(~(-56701i), _wgslsmith_add_i32(global2.c, u_input.d))), vec4<i32>(_wgslsmith_add_i32(-7000i, u_input.c.x) ^ -2147483647i, _wgslsmith_clamp_i32(global2.c, abs(26710i), _wgslsmith_mult_i32(1i, u_input.a)), global2.c, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c.x, 44811i, 44364i), u_input.c, vec3<bool>(var_2, true, global2.a.x)), u_input.c))), vec2<f32>(global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(39453u, 1u)), firstLeadingBit(u_input.b.x))), 19u)], _wgslsmith_f_op_f32(f32(-1f) * -389f)), global2.b.x);
}

fn func_1(arg_0: vec3<u32>) -> vec3<f32> {
    let var_0 = func_4(_wgslsmith_f_op_f32(-global2.b.x), ~(~func_2()));
    let var_1 = Struct_1(vec4<bool>(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(arg_0.x, 19u)], 567f)), _wgslsmith_f_op_f32(f32(-1f) * -527f))), max(countOneBits(vec3<u32>(0u, u_input.e, u_input.b.x)), abs(vec3<u32>(u_input.b.x, arg_0.x, arg_0.x)))).a.x, true, var_0.a.x, select(global2.a.x, true, ~1u >= _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.e, 0u, arg_0.x, arg_0.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(374f)), var_0.e)), global2.b.x, -594f), 2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global2.d, global2.b.zz)) * _wgslsmith_f_op_vec2_f32(round(var_0.b.zx)))), var_0.d.x);
    global1 = array<f32, 10>();
    global0 = arg_0.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(var_1.b, vec3<f32>(_wgslsmith_f_op_f32(min(global2.e, var_1.e)), _wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(arg_0.x, 19u)], -429f, false)), _wgslsmith_f_op_f32(sign(216f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(!vec4<bool>(all(global2.a.xxx), !global2.a.x, !global2.a.x, true), !(!(!global2.a)), any(vec4<bool>(false, !global2.a.x, true, any(global2.a)))), _wgslsmith_f_op_vec3_f32(func_1(~u_input.b.xyx)), select(-12156i, u_input.c.x, !(!(!global2.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.d + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], -2096f)))))), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(u_input.b.x, 1u)), 10u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d.x, _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.b.x, 19u)]))) + global1[_wgslsmith_index_u32(u_input.b.x, 10u)]))));
    let var_1 = func_4(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -824f)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.e));
    global2 = var_0;
    let var_2 = func_4(global2.b.x, vec3<u32>(_wgslsmith_div_u32(21735u, 62707u) >> (0u % 32u), u_input.e, max(62267u, ~u_input.e & abs(4294967295u))));
    var var_3 = var_2;
    var_3 = Struct_1(vec4<bool>(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1412f), _wgslsmith_f_op_f32(-299f + var_0.e)), u_input.b.wwx).a.x, false, func_2().x == 50198u, func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], var_1.b.x) - 284f), vec3<u32>(~u_input.b.x, ~33701u, 27424u)).a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-1077f - 1724f), 1145f, -1150f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-271f, -1369f, 561f)))), abs(min(-(~var_3.c), 41266i)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.e, 19u)]) * _wgslsmith_f_op_f32(var_0.d.x - global3[_wgslsmith_index_u32(33815u, 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f))))), var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(u_input.b, _wgslsmith_clamp_vec4_u32(u_input.b, ~vec4<u32>(4294967295u, u_input.e, 22373u, u_input.e), vec4<u32>(_wgslsmith_div_u32(u_input.e, 27384u), u_input.b.x, ~u_input.b.x, 4294967295u ^ u_input.b.x))), abs(_wgslsmith_mod_vec3_u32(abs(u_input.b.wzx), vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x)) | func_2()));
}


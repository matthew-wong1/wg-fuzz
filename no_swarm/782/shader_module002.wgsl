struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: bool,
    d: f32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-50721i, 2147483647i), vec3<f32>(-1996f, 789f, 524f), true, -1343f, vec2<f32>(-549f, -1229f));

var<private> global1: array<i32, 32>;

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

var<private> global3: vec3<f32>;

var<private> global4: Struct_1 = Struct_1(vec2<i32>(4733i, 21103i), vec3<f32>(-1321f, -3230f, -1120f), false, 340f, vec2<f32>(-1000f, 1000f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = ~(~(~(-vec4<i32>(-2147483647i, -9633i, 2147483647i, global4.a.x))) ^ vec4<i32>(countOneBits(~(-7517i)), global4.a.x, global0.a.x, 14454i));
    global4 = Struct_1(-abs(vec2<i32>(-1i) * -global0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(global3.x - -470f), _wgslsmith_f_op_f32(min(global4.b.x, 375f)), global0.e.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global4.b))), vec3<bool>(true, !global4.c, true)))), false, global0.e.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.zx)));
    let var_1 = Struct_1(global0.a >> (~u_input.a.yy % vec2<u32>(32u)), vec3<f32>(-153f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1187f + global3.x), _wgslsmith_f_op_f32(global4.e.x * global4.e.x)))), _wgslsmith_f_op_f32(global0.e.x - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.d))))), !(!(global4.c | global2.x)) || (global3.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.x)))), global4.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.zy * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(498f, -249f) * global0.e) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b.x, 566f)))))));
    let var_2 = vec3<f32>(-1862f, -1000f, global3.x);
    global0 = var_1;
    return var_2.x;
}

fn func_2() -> Struct_1 {
    global4 = Struct_1(global4.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global4.b, global4.b)), global4.c, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, 1035f), global3.zx) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.b.zy) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global4.e.x, global3.x), vec2<f32>(global3.x, 380f))))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(global3.x - _wgslsmith_div_f32(global0.e.x, global3.x)), _wgslsmith_div_f32(-349f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1893f, global4.b.x))), global4.b.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1175f), -113f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-611f + 518f))))))));
    var var_1 = global2.zx;
    var var_2 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.d, global0.a.x, _wgslsmith_mult_i32(-1i, 51882i)), _wgslsmith_dot_vec2_i32(global0.a, global0.a));
    let var_3 = _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(select(~vec3<i32>(global1[_wgslsmith_index_u32(u_input.e, 32u)], 32716i, global4.a.x), reverseBits(vec3<i32>(27818i, -2147483647i, -34972i)), !global2.x), vec3<i32>(36819i, -2147483647i, -49484i) << (~vec3<u32>(u_input.b, 1u, 0u) % vec3<u32>(32u))), -_wgslsmith_add_vec3_i32(vec3<i32>(-83440i, -1i, global1[_wgslsmith_index_u32(1u, 32u)]), vec3<i32>(u_input.d, -2147483647i, global4.a.x)) & vec3<i32>(~10856i, global4.a.x, reverseBits(u_input.d)), firstTrailingBit(_wgslsmith_add_vec3_i32(select(vec3<i32>(-21693i, -34320i, global0.a.x), vec3<i32>(global0.a.x, u_input.d, global1[_wgslsmith_index_u32(9251u, 32u)]), var_1.x), firstLeadingBit(vec3<i32>(2147483647i, -20510i, global0.a.x))))), _wgslsmith_sub_vec3_i32(~select(-vec3<i32>(u_input.d, global0.a.x, -17623i), ~vec3<i32>(global4.a.x, global1[_wgslsmith_index_u32(u_input.e, 32u)], 1i), select(vec3<bool>(global4.c, false, false), vec3<bool>(global0.c, global4.c, global4.c), true)), -reverseBits(countOneBits(vec3<i32>(global0.a.x, global0.a.x, global1[_wgslsmith_index_u32(6901u, 32u)])))), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(-26144i, u_input.d, global4.a.x), vec3<i32>(1i, 19696i, global4.a.x) >> (vec3<u32>(u_input.c.x, u_input.e, 33163u) % vec3<u32>(32u))));
    return Struct_1(countOneBits(~(-(~vec2<i32>(33527i, global4.a.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global4.d, global4.d), global0.b.x, 918f) + global4.b))), true, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(410f)) * _wgslsmith_f_op_f32(-global3.x))))), global4.b.yz);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = 1u;
    global4 = func_2();
    let var_2 = func_2();
    let var_3 = vec4<bool>(all(vec3<bool>(true, true, true)), false, true, global0.c);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mod_vec2_i32(global0.a, global4.a));
    let var_1 = abs(u_input.a);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x)))) - _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.e.x, 185f)))));
    let var_3 = select(select(select(select(vec4<bool>(var_0.c, global4.c, true, global4.c), vec4<bool>(global0.c, global0.c, var_0.c, true), all(vec2<bool>(var_0.c, false))), vec4<bool>(!global0.c, global4.c, var_0.c, true), _wgslsmith_div_f32(global0.d, -989f) == _wgslsmith_f_op_f32(max(1069f, global0.e.x))), vec4<bool>(true, !var_0.c, true, !global2.x), select(vec4<bool>(!var_0.c, true, global0.c, true), select(vec4<bool>(var_0.c, true, global4.c, global2.x), !vec4<bool>(false, var_0.c, false, true), false), !select(vec4<bool>(global4.c, global0.c, true, var_0.c), vec4<bool>(true, var_0.c, global4.c, global4.c), global2.x))), !(!vec4<bool>(!global2.x, all(vec3<bool>(var_0.c, global4.c, true)), !global4.c, var_0.c)), !(!(!(!vec4<bool>(var_0.c, global4.c, true, true)))));
    let var_4 = 21175u >> (countOneBits(u_input.b) % 32u);
    global2 = select(var_3.yyw, !vec3<bool>(var_3.x, global2.x, true), true);
    let var_5 = Struct_1(_wgslsmith_clamp_vec2_i32(~global0.a ^ select(global0.a, global0.a, var_3.x), -vec2<i32>(36192i, global0.a.x), var_0.a) >> ((_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(80690u, 0u), u_input.c.yy), vec2<u32>(var_1.x, var_1.x)) << (~_wgslsmith_mod_vec2_u32(u_input.a.yw, u_input.a.xz) % vec2<u32>(32u))) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(func_3()), global3.x, _wgslsmith_f_op_f32(f32(-1f) * -323f)), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-646f - 740f) + -1434f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global4.b.x, global3.x))))))));
    global3 = _wgslsmith_f_op_vec3_f32(ceil(var_5.b));
    global3 = _wgslsmith_f_op_vec3_f32(-var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_i32(select(~abs(vec3<i32>(-23179i, u_input.d, u_input.d)), max(abs(vec3<i32>(-2147483647i, var_0.a.x, global4.a.x)), select(vec3<i32>(var_0.a.x, global1[_wgslsmith_index_u32(0u, 32u)], -11670i), vec3<i32>(-20449i, 28244i, 106891i), vec3<bool>(global2.x, true, var_0.c))), !var_0.c), ~(min(vec3<i32>(32347i, global1[_wgslsmith_index_u32(var_1.x, 32u)], 2147483647i), vec3<i32>(48920i, global4.a.x, global4.a.x)) & (vec3<i32>(1i, global0.a.x, var_0.a.x) & vec3<i32>(-46061i, var_0.a.x, 21319i)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_5.e.x, -914f, var_0.d, var_5.d), vec4<f32>(global3.x, var_5.d, global4.d, 1484f)), vec4<f32>(-415f, var_5.b.x, -1443f, var_5.d)))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, _wgslsmith_f_op_f32(-var_5.b.x), _wgslsmith_f_op_f32(-var_5.b.x), _wgslsmith_f_op_f32(-global0.b.x))))));
}


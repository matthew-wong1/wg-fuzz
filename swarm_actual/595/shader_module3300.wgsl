struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: f32;

var<private> global2: array<vec2<i32>, 1>;

var<private> global3: array<u32, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = select(select(vec4<bool>(select(any(vec3<bool>(true, true, false)), false, true), true, all(vec2<bool>(true, true)), _wgslsmith_div_i32(u_input.d, u_input.d) >= global0.x), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), false), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, true, true))), vec4<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(true, true)) & (48773u <= global3[_wgslsmith_index_u32(u_input.c, 29u)]), false, any(vec2<bool>(true, true)))), !vec4<bool>(true, true, countOneBits(1u) >= (global3[_wgslsmith_index_u32(16622u, 29u)] << (u_input.c % 32u)), true), vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)))), false, select(false, !any(vec4<bool>(false, true, false, true)), select(select(false, false, false), any(vec2<bool>(true, false)), true))));
    let var_1 = select(var_0.zy, !select(select(select(var_0.yw, var_0.zx, var_0.wy), !var_0.wz, select(var_0.xx, vec2<bool>(var_0.x, false), var_0.x)), !(!vec2<bool>(var_0.x, false)), vec2<bool>(true, true)), true);
    global2 = array<vec2<i32>, 1>();
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(193f, 426f) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f * -987f))), -754f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1365f, 2510f), vec2<f32>(1585f, -386f))) + vec2<f32>(_wgslsmith_f_op_f32(646f + -467f), _wgslsmith_f_op_f32(f32(-1f) * -545f)))), !vec2<bool>(var_1.x, all(var_0.wzw))));
    var var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(u_input.d, u_input.b.x, 1i)), vec3<i32>(-1i) * -vec3<i32>(u_input.b.x, u_input.b.x, global0.x)) ^ -vec3<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, -2147483647i, u_input.b.x), vec3<i32>(u_input.b.x, 44376i, 16734i)), global0.x), _wgslsmith_mult_vec3_i32(firstTrailingBit(select(max(vec3<i32>(u_input.d, 1i, 1i), vec3<i32>(global0.x, 15829i, u_input.d)), vec3<i32>(-5047i, 34755i, -2147483647i), global0.x != -38194i)), ~(-firstTrailingBit(vec3<i32>(0i, global0.x, 13265i)))));
    return var_2.x;
}

fn func_2() -> vec3<i32> {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 181f);
    global2 = array<vec2<i32>, 1>();
    let var_0 = Struct_1(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(false, true)), true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(472f, _wgslsmith_f_op_f32(-1735f + 1773f))), vec2<f32>(-727f, _wgslsmith_div_f32(-790f, 1078f)), true == (-1408f >= _wgslsmith_f_op_f32(select(-734f, -912f, false))))));
    global3 = array<u32, 29>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 842f, var_0.b.x)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-386f, 1000f, var_0.b.x) - vec3<f32>(var_0.b.x, -621f, -522f))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(500f * var_0.b.x), -276f))), vec3<f32>(-836f, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-645f + _wgslsmith_div_f32(433f, 615f)))), select(select(vec3<bool>(false, !var_0.a.x, all(var_0.a)), vec3<bool>(false, true, var_0.a.x), true), !vec3<bool>(var_0.a.x, !var_0.a.x, var_0.a.x), var_0.a.x)));
    return -min(_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-2147483647i), -1i, u_input.d), vec3<i32>(u_input.d << (36450u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, global0.x), vec3<i32>(u_input.d, -46844i, global0.x)), u_input.b.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-39989i, global0.x, 46044i) ^ vec3<i32>(1554i, global0.x, -15073i), vec3<i32>(-71564i, -55786i, u_input.b.x))), -(~vec3<i32>(u_input.b.x, global0.x, u_input.b.x)));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global3 = array<u32, 29>();
    let var_0 = select(select(!vec3<bool>(true, !arg_3.a.x, all(vec3<bool>(arg_3.a.x, false, arg_2.a.x))), !(!(!vec3<bool>(arg_2.a.x, true, arg_3.a.x))), all(arg_3.a)), select(vec3<bool>(any(select(vec2<bool>(false, false), arg_2.a, true)), !all(vec4<bool>(true, arg_2.a.x, arg_2.a.x, arg_3.a.x)), true || !arg_2.a.x), select(!(!vec3<bool>(true, false, arg_2.a.x)), vec3<bool>(any(vec3<bool>(true, true, false)), false, true), select(select(vec3<bool>(true, arg_2.a.x, arg_2.a.x), vec3<bool>(arg_2.a.x, true, arg_2.a.x), vec3<bool>(false, true, arg_3.a.x)), vec3<bool>(true, arg_2.a.x, false), select(vec3<bool>(false, false, arg_3.a.x), vec3<bool>(false, arg_3.a.x, false), arg_2.a.x))), false), vec3<bool>(_wgslsmith_div_u32(7672u, u_input.c) >= ~1u, 0i > global0.x, any(vec2<bool>(true, arg_3.a.x))));
    global0 = firstLeadingBit(vec2<i32>(firstLeadingBit(-_wgslsmith_clamp_i32(u_input.b.x, arg_1.x, 80297i)), min(firstTrailingBit(-1i), firstLeadingBit(_wgslsmith_dot_vec3_i32(arg_1, vec3<i32>(u_input.d, u_input.b.x, -5909i))))));
    var var_1 = _wgslsmith_add_u32(~923u, _wgslsmith_add_u32(_wgslsmith_add_u32(0u, global3[_wgslsmith_index_u32(min(1147u, u_input.c), 29u)]), ~_wgslsmith_add_u32(u_input.c, 7663u))) ^ 53513u;
    global2 = array<vec2<i32>, 1>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_3.b.x)), _wgslsmith_f_op_f32(select(arg_3.b.x, -1658f, false)))) * _wgslsmith_f_op_f32(sign(arg_0))));
}

fn func_1() -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c, max(select(u_input.a >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9829u, 29u)], 29u)], 29u)] % 32u), ~u_input.c, true), abs(_wgslsmith_div_u32(1u, 59469u)))) << (1u % 32u), 29u)];
    global3 = array<u32, 29>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1660f)) - _wgslsmith_f_op_f32(abs(1006f))), -732f))) - _wgslsmith_f_op_f32(step(-869f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-265f, _wgslsmith_f_op_f32(-1134f + -784f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(1886f - -2834f), func_2(), Struct_1(vec2<bool>(true, false), vec2<f32>(-213f, -623f)), Struct_1(vec2<bool>(true, false), vec2<f32>(-207f, 1031f)))), _wgslsmith_f_op_f32(f32(-1f) * -923f), -536f), vec3<f32>(-380f, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(375f, -2116f, false)) - -1542f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1693f, -476f, -1000f)))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(199f, 1789f, 297f), vec3<f32>(806f, -1000f, -197f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-263f, -1655f, 1272f))))))))));
    var_1 = vec3<f32>(var_1.x, 204f, var_1.x);
    return Struct_1(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), 4294967295u > u_input.a), vec2<bool>(false, all(vec4<bool>(true, false, false, false))), all(vec2<bool>(false, true))), select(vec2<bool>(any(vec2<bool>(true, false)), false), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), (~u_input.d != u_input.d) == (firstTrailingBit(1u) < global3[_wgslsmith_index_u32(1u, 29u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1166f, var_1.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1000f) - var_1.zz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), !(global3[_wgslsmith_index_u32(0u, 29u)] > 4294967295u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_1.xy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 1080f)))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_1.x))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = func_1();
    let var_1 = func_1();
    global0 = (vec2<i32>(-arg_3.x, arg_3.x) << (abs(vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(0u, u_input.c)))) % vec2<u32>(32u))) ^ vec2<i32>(global0.x, arg_3.x);
    var var_2 = arg_2;
    return var_0;
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    var var_0 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(577f, arg_1.b.x, -1306f) + vec3<f32>(-1016f, -383f, arg_1.b.x))))))), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, arg_1.b.x, -471f)))), arg_1, Struct_1(!func_1().a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_1.b)) - vec2<f32>(arg_1.b.x, arg_1.b.x))), _wgslsmith_sub_vec3_i32(max(vec3<i32>(2147483647i, arg_2.x, arg_2.x), arg_2.yyw) | _wgslsmith_mod_vec3_i32(arg_2.xzw, arg_2.xyw), arg_2.yxz)), arg_1, ~_wgslsmith_mod_vec3_i32(arg_2.xzy, -_wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, 70855i, arg_2.x), arg_2.zzy)));
    let var_1 = Struct_1(!(!func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(633f, 904f, var_0.b.x)), Struct_1(arg_1.a, vec2<f32>(730f, arg_1.b.x)), Struct_1(arg_1.a, var_0.b), -vec3<i32>(0i, u_input.d, -52430i)).a), arg_1.b);
    let var_2 = !(true | !(!var_0.a.x));
    var var_3 = any(func_1().a);
    let var_4 = !var_0.a;
    return 37790u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u ^ _wgslsmith_add_u32(u_input.c, func_6(select(vec4<u32>(global3[_wgslsmith_index_u32(u_input.c, 29u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 29u)], 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)], u_input.a), vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(109112u, 29u)], global3[_wgslsmith_index_u32(4294967295u, 29u)], u_input.a), vec4<bool>(false, false, true, true)) | vec4<u32>(u_input.a, 18184u, u_input.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 29u)], 29u)]), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 397f, -1262f)), func_1(), func_1(), vec3<i32>(u_input.d, u_input.b.x, 38894i)), vec4<i32>(global0.x, _wgslsmith_mod_i32(u_input.d, u_input.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(85745i, u_input.b.x, global0.x, u_input.b.x), vec4<i32>(19920i, u_input.d, global0.x, global0.x)), -u_input.b.x)));
    global1 = 1259f;
    global3 = array<u32, 29>();
    var var_1 = global0.x & ~(~(-81069i) >> (0u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~countOneBits(-global0.x), _wgslsmith_div_i32(-4571i, -29987i & global0.x)), select(abs(select(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(52956u, 29u)], 29u)], 5170u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14101u, 29u)], 29u)], global3[_wgslsmith_index_u32(61284u, 29u)]), vec2<bool>(true, true))), vec2<u32>(59235u, u_input.c), func_1().a.x) >> (~(~abs(vec2<u32>(52150u, global3[_wgslsmith_index_u32(var_0, 29u)]))) % vec2<u32>(32u)), ~(~(~(vec2<u32>(41914u, 16739u) | vec2<u32>(u_input.c, global3[_wgslsmith_index_u32(var_0, 29u)])))));
}


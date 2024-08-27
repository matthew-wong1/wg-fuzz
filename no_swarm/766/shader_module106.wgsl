struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global1: Struct_1 = Struct_1(-50649i, true, vec3<f32>(-488f, 1740f, -1265f), vec3<i32>(-1i, 1i, 2147483647i), false);

var<private> global2: array<vec3<i32>, 21>;

var<private> global3: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(0u, vec4<f32>(-1524f, -1319f, 626f, -1544f)), Struct_2(4294967295u, vec4<f32>(-257f, 1025f, -253f, 640f)), Struct_2(19106u, vec4<f32>(-490f, -620f, 1393f, -1697f)), Struct_2(1u, vec4<f32>(2090f, -608f, 370f, -1000f)), Struct_2(57498u, vec4<f32>(-460f, -117f, 457f, 796f)), Struct_2(0u, vec4<f32>(-239f, -105f, -302f, -154f)), Struct_2(19187u, vec4<f32>(-768f, 423f, -1792f, -1095f)), Struct_2(0u, vec4<f32>(-588f, 511f, -1650f, -1139f)), Struct_2(1u, vec4<f32>(-1176f, -143f, -1600f, 567f)), Struct_2(55234u, vec4<f32>(1236f, 513f, 784f, -811f)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_1(-_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(global1.a, -6064i, global1.d.x, -51225i), vec4<i32>(global1.a, u_input.a.x, u_input.a.x, -1i)), global1.d.x), any(!vec4<bool>(global1.b, any(global0.zyw), any(global0.ww), all(vec3<bool>(global1.e, global1.b, global1.e)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c - vec3<f32>(global1.c.x, 1353f, 544f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global1.c, vec3<f32>(1389f, global1.c.x, global1.c.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.c.x, global1.c.x, global1.c.x))), vec3<bool>(global1.b, false, false)))))), vec3<i32>(~_wgslsmith_mult_i32(global1.a, -2147483647i) | _wgslsmith_mod_i32(_wgslsmith_clamp_i32(global1.d.x, 28798i, global1.d.x), -global1.a), _wgslsmith_div_i32(~(-2147483647i), _wgslsmith_div_i32(~u_input.a.x, abs(1i))), _wgslsmith_add_i32(u_input.a.x, -24430i)), true || any(vec3<bool>(global1.e, any(vec4<bool>(true, true, global1.b, false)), global1.e)));
    var_0 = Struct_1(var_0.a, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_0.c, var_0.c) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.c.x, var_0.c.x, 943f)))))), ~_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(global1.d, global2[_wgslsmith_index_u32(1u, 21u)]), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, arg_0), 21u)]) >> (vec3<u32>(4294967295u, 1u, _wgslsmith_clamp_u32(0u, 1u, _wgslsmith_add_u32(2281u, arg_0))) % vec3<u32>(32u)), global0.x);
    let var_1 = Struct_1(60283i, any(select(select(select(vec4<bool>(false, global0.x, false, global1.e), vec4<bool>(global0.x, var_0.e, true, true), false), select(vec4<bool>(global0.x, var_0.b, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, var_0.e, var_0.b, global1.e)), select(vec4<bool>(var_0.b, var_0.b, false, false), vec4<bool>(false, true, true, global1.b), vec4<bool>(false, false, true, false))), vec4<bool>(true, var_0.b & global1.b, any(global0.zyx), true), true)), var_0.c, ~_wgslsmith_add_vec3_i32(~min(var_0.d, vec3<i32>(1i, 22766i, -36347i)), firstTrailingBit(vec3<i32>(u_input.a.x, -2147483647i, var_0.d.x))), reverseBits(_wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 4294967295u), ~arg_0)) != min(0u, ~(~arg_0)));
    global0 = select(!select(!select(vec4<bool>(var_0.e, true, global0.x, false), vec4<bool>(var_1.b, true, true, true), var_0.b), !select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(true, true, global0.x, true), true), global1.b), vec4<bool>(any(select(!vec4<bool>(var_0.e, var_0.e, false, true), vec4<bool>(global0.x, global1.b, true, true), all(vec4<bool>(var_1.e, global0.x, global1.e, true)))), global1.b, false, global1.e || all(!vec4<bool>(true, global1.e, true, var_1.e))), select(vec4<bool>(any(!vec4<bool>(true, global0.x, var_1.e, global1.e)), global0.x, !any(vec4<bool>(global1.e, false, global0.x, global0.x)), select(var_1.b, true, global1.e) || true), select(!vec4<bool>(true, false, true, global1.e), vec4<bool>(true, var_0.b != false, true, false), !vec4<bool>(false, global0.x, false, global1.b)), all(vec4<bool>(true, true, global0.x, !var_1.b))));
    global2 = array<vec3<i32>, 21>();
    return u_input.a.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec4<i32>) -> vec3<f32> {
    global3 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_clamp_vec3_i32(arg_1.d, _wgslsmith_div_vec3_i32(-arg_3.wzx, vec3<i32>(~_wgslsmith_add_i32(-1i, 46335i), abs(0i), abs(_wgslsmith_add_i32(2147483647i, arg_1.d.x)))), countOneBits(firstLeadingBit(vec3<i32>(0i, -22967i, min(global1.d.x, 49137i)))));
    var var_1 = Struct_3(!vec3<bool>(true, true, !select(arg_1.e, true, global1.b)));
    let var_2 = vec4<bool>(any(!global0.xy) && true, (4294967295u & ~firstTrailingBit(0u)) == 87530u, false, global1.b | !any(select(vec2<bool>(true, global0.x), vec2<bool>(true, global0.x), global0.x)));
    var var_3 = (vec2<i32>(39339i, u_input.a.x) >> (abs(~(~vec2<u32>(4294967295u, 0u))) % vec2<u32>(32u))) & u_input.a;
    return _wgslsmith_f_op_vec3_f32(ceil(arg_1.c));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    var var_0 = Struct_1(~global1.d.x, true, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(arg_3, arg_3), _wgslsmith_mult_vec4_i32(arg_3 << (vec4<u32>(1u, arg_1, arg_2.a, 9877u) % vec4<u32>(32u)), vec4<i32>(0i, u_input.a.x, 0i, 2147483647i))), Struct_1(func_3(arg_2.a), all(select(vec3<bool>(global1.b, global1.e, global1.e), global0.wzw, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global1.c))), vec3<i32>(global1.d.x, -2147483647i, -1i), true), arg_0, vec4<i32>(~func_3(1u), -1i, countOneBits(_wgslsmith_sub_i32(u_input.a.x, -41584i)), -37990i))), ~vec3<i32>(_wgslsmith_clamp_i32(2147483647i, 60177i, _wgslsmith_mod_i32(arg_3.x, -2147483647i)), global1.d.x, 0i), false);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(global1.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec3_f32(func_4(arg_3, Struct_1(_wgslsmith_div_i32(2147483647i, 27508i), var_0.b & false, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, var_0.c.x, 804f) + var_0.c), global1.d, true), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_2.b + arg_2.b), _wgslsmith_f_op_vec4_f32(ceil(arg_2.b)), any(vec4<bool>(false, true, false, var_0.b)))), vec4<i32>(arg_3.x, u_input.a.x, i32(-1i) * -46428i, arg_3.x))).x)), 1000f, var_0.c.x);
    var var_2 = ~abs(vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(~arg_3.x, abs(u_input.a.x))));
    let var_3 = arg_2;
    var var_4 = -(~vec2<i32>(min(firstLeadingBit(u_input.a.x), -var_0.d.x), i32(-1i) * -24771i));
    return _wgslsmith_sub_u32(~1u, arg_1);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(select(firstLeadingBit(countOneBits(40199i) >> (func_2(vec4<f32>(global1.c.x, global1.c.x, -570f, 872f), 51471u, global3[_wgslsmith_index_u32(0u, 10u)], vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)) % 32u)), firstLeadingBit(11685i), global0.x), global0.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-183f, global1.c.x, global1.c.x)), global1.d, global1.b);
    let var_1 = _wgslsmith_f_op_vec3_f32(global1.c + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_sub_vec4_i32(~vec4<i32>(-11636i, u_input.a.x, u_input.a.x, 1i), ~vec4<i32>(global1.a, var_0.d.x, global1.d.x, var_0.a)), Struct_1(1i, var_0.e, global1.c, global1.d, var_0.b), vec4<f32>(global1.c.x, _wgslsmith_f_op_f32(round(var_0.c.x)), -1629f, var_0.c.x), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, global1.a, -14451i, -1i), vec4<i32>(var_0.d.x, u_input.a.x, var_0.a, -65543i)), -vec4<i32>(-1i, 2147483647i, 0i, u_input.a.x)))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.c.x, -1603f, true))))));
    global2 = array<vec3<i32>, 21>();
    let var_2 = 1u;
    global2 = array<vec3<i32>, 21>();
    return Struct_3(global0.yzx);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.xy, vec2<f32>(-397f, 1000f)))), arg_0.yy, arg_1.a.zx))));
    let var_1 = func_1();
    var var_2 = abs(~1u);
    let var_3 = !var_1.a.x;
    let var_4 = global3[_wgslsmith_index_u32(firstLeadingBit(~reverseBits(~1u)), 10u)];
    return Struct_1(~(22966i << (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_4.a, 84100u), vec2<u32>(23461u, 4294967295u)), vec2<u32>(55041u, 1u) >> (vec2<u32>(100326u, var_4.a) % vec2<u32>(32u))) % 32u)), true, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_4(vec4<i32>(u_input.a.x, u_input.a.x, 0i, global1.a), Struct_1(4448i, true, arg_0, global2[_wgslsmith_index_u32(var_4.a, 21u)], true), var_4.b, vec4<i32>(u_input.a.x, 2522i, arg_2.x, -13603i))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_4.b.x * arg_0.x) + _wgslsmith_f_op_f32(307f + var_4.b.x)), 1000f))), ~(_wgslsmith_mod_vec3_i32(vec3<i32>(-8716i, 2147483647i, 47805i), vec3<i32>(u_input.a.x, 34601i, 2147483647i)) & vec3<i32>(arg_2.x, global1.d.x, 5579i)) << (~vec3<u32>(var_4.a, var_4.a, 0u) % vec3<u32>(32u)), arg_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(-888f - global1.c.x)), -900f)), -380f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, _wgslsmith_div_f32(global1.c.x, global1.c.x)))), func_1(), vec2<i32>(_wgslsmith_sub_i32(global1.a, u_input.a.x), 10009i), func_1());
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(555f, _wgslsmith_div_f32(global1.c.x, global1.c.x), _wgslsmith_f_op_f32(ceil(var_0.c.x)), -786f));
    let x = u_input.a;
    s_output = StorageBuffer(-55127i, 1002f, firstTrailingBit(-abs(select(vec4<i32>(var_0.d.x, u_input.a.x, global1.d.x, -1i), vec4<i32>(global1.a, var_0.d.x, u_input.a.x, 2147483647i), var_0.b))), ~global1.a);
}


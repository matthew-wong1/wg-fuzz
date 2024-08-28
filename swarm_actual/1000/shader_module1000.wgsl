struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 13132u;

var<private> global1: array<i32, 3> = array<i32, 3>(-16346i, -24162i, 937i);

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<vec3<i32>, 27>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = Struct_3(vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.e.x))))), 1386f, -396f), global2.x, arg_0.b.zzx, select(vec4<bool>(global2.x, all(select(vec4<bool>(true, true, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(true, global2.x, false, global2.x))), _wgslsmith_f_op_f32(-336f - arg_0.a.e.x) != _wgslsmith_f_op_f32(min(arg_0.a.e.x, arg_0.a.e.x)), all(!vec2<bool>(global2.x, global2.x))), !(!select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(true, true, true, true), vec4<bool>(true, global2.x, global2.x, global2.x))), vec4<bool>(true, global2.x, arg_0.b.x > _wgslsmith_sub_i32(arg_0.b.x, u_input.a.x), false)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -668f)), 1000f, arg_0.a.a.x);
    var var_2 = (select(firstTrailingBit(abs(var_0.c.x)), 29789i, select(!var_0.b, true, global2.x || global2.x)) | _wgslsmith_mod_i32(arg_0.a.d.x, min(u_input.d.x, 35003i) & ~arg_0.b.x)) >> (abs(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) >> (u_input.c.x % 32u)) % 32u);
    var var_3 = !(!all(!var_0.d.yw)) || all(var_0.d.ww);
    var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1055f, _wgslsmith_f_op_f32(trunc(var_1.x)))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1751f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-439f + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a.e.x, -514f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1606f, -1555f)) * _wgslsmith_f_op_f32(abs(arg_0.a.a.x)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x * var_1.x)))), u_input.d.zyw, vec4<bool>((_wgslsmith_f_op_f32(-arg_0.a.a.x) == _wgslsmith_f_op_f32(select(1000f, -118f, true))) && global2.x, !var_0.b || global2.x, global2.x, !all(var_0.d)));
    return -(~min(vec2<i32>(~arg_0.b.x, 1i), vec2<i32>(u_input.e, -57843i)));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1713f, -176f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-553f, 1245f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1075f, -1000f) + vec2<f32>(1943f, -796f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(541f, -995f))))), vec2<bool>(true, any(vec4<bool>(arg_0, true, arg_0, true))))))), global1[_wgslsmith_index_u32(~1u, 3u)], -386f, select(global3[_wgslsmith_index_u32(0u >> (0u % 32u), 27u)], firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(-644i, -44371i), reverseBits(-2147483647i), -2147483647i)), !vec3<bool>(true, false, arg_0 | true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(534f * -194f) + -122f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2163f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-181f)))), -3722f));
    global2 = !(!select(!(!vec2<bool>(true, global2.x)), !vec2<bool>(arg_0, true), !select(vec2<bool>(arg_0, true), vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x))));
    global2 = vec2<bool>(false, (u_input.c.x << (~(~28931u) % 32u)) != ~_wgslsmith_sub_u32(u_input.c.x ^ u_input.c.x, max(72260u, u_input.c.x)));
    var var_1 = max(vec2<i32>(0i, 1i), func_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, -797f))), -2147483647i, _wgslsmith_f_op_f32(exp2(var_0.e.x)), ~global3[_wgslsmith_index_u32(u_input.c.x, 27u)], var_0.e), u_input.d >> (u_input.c % vec4<u32>(32u)))));
    let var_2 = ~u_input.d.yz;
    return _wgslsmith_f_op_f32(max(-568f, _wgslsmith_f_op_f32(round(370f))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<f32>) -> Struct_2 {
    global3 = array<vec3<i32>, 27>();
    global1 = array<i32, 3>();
    return Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(-886f)), -1463f), ~(-arg_0), _wgslsmith_f_op_f32(-arg_3.x), vec3<i32>(-1i) * -vec3<i32>(1i, 1i, 1i), vec4<f32>(_wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_f_op_f32(floor(arg_1)))), _wgslsmith_div_f32(arg_1, -497f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(772f - arg_3.x)), -183f)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b.x, arg_2.x, -1i) & vec4<i32>(-19644i, u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 3u)], arg_2.x), -u_input.d), u_input.d));
}

fn func_5(arg_0: Struct_4) -> vec2<f32> {
    let var_0 = arg_0.d.a.c >= 569f;
    let var_1 = firstLeadingBit(~u_input.c.xx) >> (~_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.c.xw, u_input.c.ww), vec2<u32>(11835u, _wgslsmith_dot_vec2_u32(u_input.c.zw, vec2<u32>(30638u, u_input.c.x))), vec2<u32>(~u_input.c.x, u_input.c.x << (u_input.c.x % 32u))) % vec2<u32>(32u));
    let var_2 = vec4<bool>(arg_0.c.d.x, !all(vec4<bool>(select(global2.x, false, arg_0.c.d.x), any(vec2<bool>(false, global2.x)), !arg_0.b.x, false)), arg_0.b.x, arg_0.b.x);
    global1 = array<i32, 3>();
    global3 = array<vec3<i32>, 27>();
    return _wgslsmith_f_op_vec2_f32(-arg_0.a);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3, arg_3: vec4<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.a.zy, vec2<f32>(arg_2.a.x, arg_2.a.x))), vec3<bool>(global2.x, select(arg_2.d.x, true, false), true), arg_2, func_4(~(-42728i), _wgslsmith_f_op_f32(func_2(arg_2.b)), arg_3.xwx, _wgslsmith_f_op_vec2_f32(vec2<f32>(234f, arg_1.a.x) - arg_2.a.xx))))) + _wgslsmith_f_op_vec2_f32(abs(func_4(func_4(i32(-1i) * -9576i, arg_1.c, arg_2.c ^ vec3<i32>(2147483647i, -25790i, 0i), arg_1.e.yx).a.b, func_4(arg_2.c.x, _wgslsmith_f_op_f32(-arg_1.c), vec3<i32>(arg_1.d.x, arg_2.c.x, arg_3.x), vec2<f32>(1707f, arg_2.a.x)).a.e.x, -vec3<i32>(global1[_wgslsmith_index_u32(18955u, 3u)], arg_1.d.x, arg_2.c.x), _wgslsmith_f_op_vec2_f32(-arg_2.a.zy)).a.e.wy)));
    let var_1 = 1i;
    let var_2 = func_4(-arg_1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-367f, _wgslsmith_f_op_f32(step(-1744f, -710f)))), arg_2.a.x)))), max(arg_2.c, -arg_1.d), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-701f)))))), _wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(round(-1824f))))).a;
    global2 = !vec2<bool>(true, any(select(arg_2.d.xy, select(vec2<bool>(arg_2.d.x, global2.x), arg_2.d.xz, global2.x), select(arg_2.d.yy, vec2<bool>(global2.x, true), false))));
    let var_3 = (countOneBits(~arg_2.c.x) ^ _wgslsmith_mult_i32(abs(-arg_1.b), func_3(func_4(-5255i, arg_1.e.x, u_input.a, vec2<f32>(862f, 822f))).x)) == arg_1.b;
    return vec4<f32>(arg_2.a.x, -2051f, _wgslsmith_f_op_f32(step(arg_2.a.x, _wgslsmith_f_op_f32(-arg_2.a.x))), arg_1.e.x);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_1.c.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, arg_0.e.x, arg_1.a.x, -1166f)))), true)), select(global2.x, true, -1453f < _wgslsmith_f_op_vec2_f32(func_5(Struct_4(vec2<f32>(-243f, 758f), arg_1.c.d.xyy, arg_1.c, arg_1.d))).x) | true, vec3<i32>(~_wgslsmith_div_i32(arg_0.d.x, -3504i), ~0i, u_input.d.x) ^ select(arg_1.d.b.xwy, min(u_input.d.wwy & vec3<i32>(arg_1.d.a.b, u_input.e, u_input.d.x), ~vec3<i32>(2147483647i, 1i, arg_0.b)), true), vec4<bool>(arg_1.c.d.x, select(func_3(Struct_2(arg_0, arg_1.d.b)).x > -1i, all(vec2<bool>(arg_1.b.x, false)), _wgslsmith_sub_u32(4294967295u, u_input.c.x) == 0u), global2.x, (~u_input.c.x | (u_input.c.x << (u_input.c.x % 32u))) != _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 111781u ^ u_input.c.x)));
    global1 = array<i32, 3>();
    var var_1 = all(vec4<bool>(var_0.a.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.a.x + var_0.a.x) - 1087f), true, any(select(vec2<bool>(var_0.b, true), arg_1.c.d.yy, !var_0.d.x)), global2.x | !(arg_1.c.b | true)));
    var var_2 = arg_1;
    var var_3 = var_2.c;
    return vec4<u32>(~u_input.c.x, abs(~u_input.c.x), u_input.c.x, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = func_6(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-850f, 380f) - vec2<f32>(1013f, 1000f)))), _wgslsmith_dot_vec2_i32(~(vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], global1[_wgslsmith_index_u32(u_input.c.x, 3u)]) ^ u_input.d.xz), _wgslsmith_add_vec2_i32(vec2<i32>(-44147i, global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), vec2<i32>(-2147483647i, -7181i)) ^ ~u_input.a.xy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec3<i32>(u_input.d.x, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(108665u, 3u)], max(-2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 3u)])), -u_input.b.x), _wgslsmith_f_op_vec4_f32(func_1(~u_input.c.x, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2216f, -213f) * vec2<f32>(1345f, 892f)), u_input.b.x, _wgslsmith_f_op_f32(floor(-1000f)), u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-525f, -1000f, -828f, -149f))), Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -1268f, 1055f, 686f), vec4<f32>(1319f, 288f, -1000f, 616f), false)), global2.x, u_input.a, select(vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(true, global2.x, false, global2.x))), reverseBits(vec4<i32>(-2147483647i, -2147483647i, -16663i, 1i)) << (vec4<u32>(70871u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))))), Struct_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-658f, -467f))))))), select(!vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, !global2.x, false), select(vec3<bool>(true, true, true), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(true, global2.x, global2.x)), vec3<bool>(true, global2.x, false))), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1099f, -816f, -825f, 1000f), vec4<f32>(-2287f, 249f, -310f, 1348f), vec4<bool>(false, global2.x, global2.x, false))) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(510f, 302f, 2667f, 1215f), vec4<f32>(1135f, 1012f, 1342f, 109f)))), all(vec3<bool>(global2.x, true, true)), vec3<i32>(global1[_wgslsmith_index_u32(~u_input.c.x, 3u)], -u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, 86428u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), 3u)]), vec4<bool>(global2.x, global2.x, global2.x, global2.x)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-447f, 1000f) + vec2<f32>(-1080f, -2974f)), firstTrailingBit(global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), -280f, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, u_input.e, u_input.a.x), u_input.d.yzw), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-618f, -223f, 1000f, -132f))), vec4<i32>(reverseBits(u_input.a.x), global1[_wgslsmith_index_u32(u_input.c.x, 3u)], _wgslsmith_mult_i32(-38222i, u_input.b.x), firstTrailingBit(global1[_wgslsmith_index_u32(u_input.c.x, 3u)])))));
    let var_2 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1171f, 204f, 948f, 1122f), vec4<f32>(-1104f, -390f, -1460f, -775f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-232f, -478f, -269f, 510f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, 270f, 1552f, 180f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-823f, -398f, 635f, -101f), vec4<f32>(1000f, 250f, 790f, -1100f))), _wgslsmith_f_op_vec4_f32(func_1(35539u, Struct_1(vec2<f32>(226f, 1859f), global1[_wgslsmith_index_u32(u_input.c.x, 3u)], 1625f, global3[_wgslsmith_index_u32(u_input.c.x, 27u)], vec4<f32>(-310f, 817f, 353f, -965f)), Struct_3(vec4<f32>(1190f, -375f, -258f, -1278f), true, global3[_wgslsmith_index_u32(0u, 27u)], vec4<bool>(false, true, true, global2.x)), u_input.d))))), !global2.x, ~max(min(vec3<i32>(u_input.e, 2147483647i, global1[_wgslsmith_index_u32(3081u, 3u)]), ~global3[_wgslsmith_index_u32(var_1.x, 27u)]), vec3<i32>(-global1[_wgslsmith_index_u32(u_input.c.x, 3u)], -1i, reverseBits(2535i))), vec4<bool>(!((u_input.d.x < 36697i) || (global2.x == false)), any(!(!vec3<bool>(global2.x, true, true))), !(!any(vec3<bool>(global2.x, global2.x, true))), global2.x));
    var var_3 = _wgslsmith_div_u32(var_1.x, ~(~(firstLeadingBit(u_input.c.x) << (var_1.x % 32u))));
    let var_4 = 2763u;
    let var_5 = select(!global2.x, var_2.b, all(var_2.d.yzx));
    var_3 = _wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(u_input.c.x, 102239u), _wgslsmith_mult_u32(4294967295u, var_1.x)), vec2<u32>(~(~72750u), select(17677u, var_1.x, var_5))), var_1.x);
    global3 = array<vec3<i32>, 27>();
    let var_6 = _wgslsmith_add_vec3_u32(u_input.c.wxx, var_1.xzw);
    let x = u_input.a;
    s_output = StorageBuffer(7222u, _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_4, var_4) << (u_input.c.zw % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(vec2<u32>(19037u, var_6.x), u_input.c.ww)), var_1.zy), 3u)], var_2.c.x), firstLeadingBit(~_wgslsmith_mult_u32(~u_input.c.x, var_1.x)), func_4(var_2.c.x, _wgslsmith_f_op_f32(func_2(var_2.d.x)), vec3<i32>(global1[_wgslsmith_index_u32(var_6.x, 3u)], _wgslsmith_add_i32(u_input.b.x, firstLeadingBit(-52658i)), _wgslsmith_mod_i32(u_input.e, var_2.c.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(515f - -1277f)))).a.d);
}


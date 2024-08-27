struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_3 = Struct_3(vec2<u32>(104522u, 14897u), vec2<bool>(false, false), Struct_2(vec3<i32>(-94244i, i32(-2147483648), -1i)));

var<private> global2: f32 = -1504f;

var<private> global3: vec4<bool>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_div_i32(-12928i, ~reverseBits(reverseBits(reverseBits(0i))));
    var var_1 = _wgslsmith_f_op_f32(min(1912f, _wgslsmith_f_op_f32(f32(-1f) * -1307f)));
    let var_2 = Struct_3(~u_input.a.zy, vec2<bool>(!(!(!global0.c)), global1.b.x), global1.c);
    global3 = select(vec4<bool>(1371u >= global1.a.x, var_2.b.x != any(global3.xzx), any(select(vec4<bool>(global3.x, false, global0.c, global3.x), vec4<bool>(global3.x, false, true, true), vec4<bool>(global1.b.x, false, global1.b.x, global3.x))), 1000f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0)) + _wgslsmith_f_op_f32(arg_0 + -206f))), !(!select(vec4<bool>(global3.x, true, true, global3.x), vec4<bool>(true, true, false, var_2.b.x), vec4<bool>(false, var_2.b.x, var_2.b.x, true))), !select(!vec4<bool>(global0.c, global3.x, var_2.b.x, true), select(select(vec4<bool>(true, false, global1.b.x, true), vec4<bool>(true, global3.x, false, false), global1.b.x), !vec4<bool>(false, global1.b.x, global1.b.x, global1.b.x), !vec4<bool>(true, true, global0.c, true)), vec4<bool>(all(vec3<bool>(false, true, var_2.b.x)), true, false, any(vec2<bool>(global1.b.x, global3.x)))));
    var var_3 = 1i;
    return vec4<bool>(!(!any(select(vec4<bool>(global3.x, global1.b.x, global0.c, global0.c), vec4<bool>(global3.x, global1.b.x, false, global0.c), true))), !select(!all(vec2<bool>(var_2.b.x, var_2.b.x)), true | global3.x, false), all(vec2<bool>(global3.x, all(global3.zyx))), true);
}

fn func_2() -> Struct_4 {
    let var_0 = global1.c.a.x;
    var var_1 = select(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c << (u_input.a.x % 32u), global1.c.a.x & global1.c.a.x, _wgslsmith_add_i32(-1i, global0.a.a.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, -2147483647i, -2147483647i), ~vec3<i32>(global1.c.a.x, 0i, global0.b.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(global1.a.x, u_input.a.x, u_input.a.x), u_input.a) % vec3<u32>(32u)))), select(_wgslsmith_mod_vec3_i32(global0.a.a, abs(global0.a.a | global0.a.a)), vec3<i32>(-(~u_input.b), _wgslsmith_clamp_i32(-21563i, 0i, 1i), global0.a.a.x), !any(vec2<bool>(global1.b.x, global1.b.x))), global0.c);
    global0 = Struct_4(Struct_2(vec3<i32>(var_1.x, abs(-5498i), 1i) << (u_input.a % vec3<u32>(32u))), ~vec2<i32>(-global1.c.a.x, 1i) ^ ((-global0.b >> (global1.a % vec2<u32>(32u))) << (firstTrailingBit(vec2<u32>(1u, global1.a.x)) % vec2<u32>(32u))), true);
    global3 = select(select(func_3(1377f, global0.b.x), select(vec4<bool>(!global0.c, all(global3.wxx), any(vec3<bool>(global1.b.x, true, false)), true), !vec4<bool>(global1.b.x, true, global0.c, global1.b.x), !(!vec4<bool>(global0.c, global3.x, false, true))), !vec4<bool>(true, true, false && global3.x, global1.b.x)), vec4<bool>(any(global3.wwx), false, global1.b.x, global3.x), any(!select(!vec4<bool>(true, global0.c, false, global1.b.x), !vec4<bool>(false, global0.c, true, global0.c), select(vec4<bool>(false, global0.c, global3.x, false), vec4<bool>(false, global0.c, global0.c, true), false))));
    let var_2 = vec2<i32>(-u_input.c | 12328i, ~(-2147483647i));
    return Struct_4(global0.a, -((reverseBits(vec2<i32>(var_1.x, var_1.x)) >> ((global1.a & global1.a) % vec2<u32>(32u))) ^ _wgslsmith_clamp_vec2_i32(global1.c.a.xx, var_2, firstLeadingBit(vec2<i32>(2147483647i, 0i)))), true);
}

fn func_1() -> f32 {
    global0 = func_2();
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1764f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -838f) * -1822f), -1058f, 0u > u_input.a.x)))));
    global3 = vec4<bool>(global3.x, false, !(false | all(global3.xx)), true);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(var_1)))) + _wgslsmith_f_op_f32(f32(-1f) * -561f)))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(345f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (56711u << (countOneBits(~global1.a.x) % 32u)) | 0u;
    let var_1 = abs(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(3524i, ~u_input.b), 18378i, firstLeadingBit(~global0.a.a.x), global0.a.a.x), -_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(2583i, -2147483647i, u_input.c, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, 0i, global1.c.a.x, u_input.c), vec4<i32>(global0.a.a.x, 2147483647i, 2147483647i, 18428i)))));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1073f * -230f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-316f + -908f) - -184f) + _wgslsmith_f_op_f32(f32(-1f) * -142f)), 188f));
    let var_2 = Struct_1(~(select(global1.a, ~u_input.a.yx, global3.x) & vec2<u32>(0u & u_input.a.x, ~0u)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 2841f, 163f)), vec3<f32>(_wgslsmith_f_op_f32(func_1()), -811f, _wgslsmith_f_op_f32(f32(-1f) * -2177f)))), ~u_input.a);
    let var_3 = Struct_4(Struct_2(global1.c.a), var_1.xw, (false && all(func_3(var_2.b.x, global0.b.x).yyw)) && global0.c);
    global3 = !vec4<bool>(global3.x | all(vec3<bool>(global1.b.x, global0.c, global0.c)), !global0.c || true, _wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(var_2.b.x * -1271f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.b.x)) - -1000f), true);
    let var_4 = !vec3<bool>(false & global0.c, false, global1.b.x);
    global3 = vec4<bool>(any(vec2<bool>(all(func_3(-1209f, 10938i).zzx), true)), true, 1u == (max(var_2.c.x, firstLeadingBit(var_2.a.x)) >> ((var_0 | global1.a.x) % 32u)), func_3(-1000f, -10116i).x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-vec4<i32>(var_3.b.x, -26567i, 74431i, 1i) | _wgslsmith_sub_vec4_i32(abs(var_1), reverseBits(vec4<i32>(-41915i, 2147483647i, var_1.x, var_3.b.x)))), var_2.b.x);
}


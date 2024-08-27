struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<bool>;

var<private> global2: vec2<f32> = vec2<f32>(-1492f, -472f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> vec4<bool> {
    global0 = Struct_2(vec4<bool>(global0.b.b, (all(global0.a.wwy) & arg_0.a) & any(vec3<bool>(arg_0.a, global1.x, false)), all(vec2<bool>(true, 23864i < u_input.c.x)), true || !select(true, arg_0.a, global1.x)), Struct_1(_wgslsmith_div_vec4_f32(global0.c.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global0.c.a.x, 539f, arg_0.b, arg_0.b), vec4<f32>(972f, 385f, 1000f, global0.c.a.x))))), all(select(global0.a, vec4<bool>(true, true, true, true), false))), Struct_1(global0.c.a, arg_0.a), any(!(!global0.a.zzz)));
    var var_0 = u_input.d;
    var_0 = firstLeadingBit(u_input.e);
    var var_1 = true;
    global0 = Struct_2(vec4<bool>(true, global1.x, true, global0.b.b), global0.b, Struct_1(vec4<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1197f, arg_0.b)) + 1329f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f * 1048f)), 253f), false), all(select(vec2<bool>(11693u == u_input.d, true && global0.a.x), vec2<bool>(false, !global0.b.b), vec2<bool>(all(vec4<bool>(arg_0.a, false, global0.c.b, true)), true | global0.a.x))));
    return vec4<bool>((_wgslsmith_f_op_f32(global0.c.a.x + 249f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b.a.x)))) | (185f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(348f)) - _wgslsmith_f_op_f32(sign(-2178f)))), true, true, true);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool) -> vec4<i32> {
    var var_0 = arg_1;
    global0 = Struct_2(func_3(Struct_3(any(!global0.a), -266f)), Struct_1(global0.c.a, all(select(global0.a.xz, select(vec2<bool>(arg_2, global0.a.x), global0.a.wz, global0.a.ww), global0.a.yx))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.c.a + vec4<f32>(638f, 900f, global2.x, global2.x)), _wgslsmith_div_vec4_f32(global0.c.a, global0.c.a), vec4<bool>(true, global1.x, arg_2, false))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.a.x, 1686f, arg_1, -1000f) + _wgslsmith_f_op_vec4_f32(step(global0.c.a, global0.c.a)))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(36417u, arg_0), vec2<u32>(arg_0, 4294967295u)), max(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_0, 40378u))) <= arg_0), false);
    global0 = Struct_2(vec4<bool>(any(select(global0.a, !vec4<bool>(global1.x, global1.x, false, true), !global0.a)), true, true, global1.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global0.b.a, global0.c.a)), _wgslsmith_f_op_vec4_f32(-global0.b.a))), global0.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(global2.x + 600f), -1132f, 641f, -1307f), _wgslsmith_f_op_vec4_f32(-global0.c.a), func_3(Struct_3(false, -981f)))), all(select(global0.a, select(vec4<bool>(global0.b.b, false, false, global0.b.b), vec4<bool>(false, global0.a.x, false, true), vec4<bool>(global0.c.b, false, false, global1.x)), global0.a.x))), true);
    global0 = Struct_2(select(func_3(Struct_3(true, global0.c.a.x)), func_3(Struct_3(any(vec4<bool>(true, global0.c.b, arg_2, global0.c.b)), global0.c.a.x)), true), Struct_1(_wgslsmith_f_op_vec4_f32(global0.b.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 1933f, 1753f))), true), Struct_1(_wgslsmith_f_op_vec4_f32(-global0.b.a), true), true);
    global0 = Struct_2(select(func_3(Struct_3(arg_2, -1291f)), vec4<bool>(false, global0.c.a.x < global0.b.a.x, true, arg_2), global0.d), Struct_1(vec4<f32>(610f, _wgslsmith_f_op_f32(2094f + _wgslsmith_f_op_f32(trunc(global2.x))), 463f, -304f), global0.a.x), global0.c, false);
    return u_input.c;
}

fn func_1() -> vec3<bool> {
    global2 = global0.c.a.xy;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(832f, -329f)), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(1124f * -427f)))) - _wgslsmith_f_op_vec2_f32(sign(global0.b.a.zx)));
    var var_0 = _wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.c.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(19641u, u_input.d, u_input.e, u_input.e), vec4<u32>(u_input.e, 1u, 25249u, 56611u)) % vec4<u32>(32u))), ~_wgslsmith_sub_vec4_i32(~u_input.c, select(u_input.c, u_input.c, global0.a))) ^ -14593i;
    global2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(328f + 913f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global0.c.a.x)), -695f)))), global0.a.zx));
    let var_1 = _wgslsmith_sub_vec4_i32(u_input.c, func_2(20859u, 932f, global0.d));
    return func_3(Struct_3(false | global0.c.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.a.x), global0.b.a.x) * _wgslsmith_f_op_f32(floor(global2.x))))).xww;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: bool, arg_3: vec3<bool>) -> StorageBuffer {
    let var_0 = -317f;
    global2 = _wgslsmith_f_op_vec2_f32(global0.c.a.zw * global0.c.a.xy);
    global1 = select(!arg_1, !(!select(arg_3.xz, !arg_1, all(vec3<bool>(false, false, global1.x)))), global0.a.zy);
    var var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global0.b.a.zy - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(931f, 1282f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(158f, global2.x) + _wgslsmith_f_op_vec2_f32(min(global0.c.a.ww, vec2<f32>(-639f, -1000f)))))), vec2<f32>(-2356f, 1000f)));
    var_1 = _wgslsmith_f_op_vec2_f32(global0.b.a.xz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(637f - -787f), 1309f, arg_2)), var_0)));
    return StorageBuffer(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 56003u), vec2<u32>(46746u, 0u)), abs(vec2<u32>(u_input.d, 28763u))), vec2<u32>(0u, u_input.e) & vec2<u32>(u_input.e, u_input.d), vec2<u32>(1u, countOneBits(u_input.d))), _wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(5906u, u_input.e)), firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(0u, 4294967295u))))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1323f - var_0))), 43894u, ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, ~33618u, u_input.e), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.e, u_input.d, 0u), vec3<u32>(104757u, u_input.b, 4294967295u), ~vec3<u32>(u_input.e, 28533u, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.a.xz;
    let var_1 = global1.x;
    let var_2 = global2.x;
    let var_3 = 1u;
    global2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b.a.x, 557f), global0.b.a.wy) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_0.x))) * global0.b.a.yx)))));
    var var_4 = u_input.d;
    var_4 = ~u_input.b;
    let var_5 = global1.x;
    let x = u_input.a;
    s_output = func_4(vec2<i32>(_wgslsmith_div_i32(firstLeadingBit(-u_input.c.x), _wgslsmith_div_i32(_wgslsmith_mult_i32(2147483647i, u_input.c.x), _wgslsmith_div_i32(-1i, u_input.c.x))), -2147483647i), !select(vec2<bool>(true, any(global0.a.zwy)), vec2<bool>(global0.c.b, !global0.d), global1.x), true, func_1());
}


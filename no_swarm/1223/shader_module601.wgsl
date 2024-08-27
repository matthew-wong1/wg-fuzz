struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 27> = array<f32, 27>(-463f, 543f, -194f, -702f, 1871f, 321f, -963f, -1293f, 166f, -1000f, -797f, 1276f, -321f, -2178f, -254f, 352f, 1169f, 1159f, 1032f, 213f, -658f, 386f, -374f, -550f, 1335f, -113f, 1255f);

var<private> global1: vec4<bool>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: array<vec3<u32>, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_mult_i32(~(~_wgslsmith_add_i32(1i, 1i & u_input.b)), max(-5777i, reverseBits(-40268i & _wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.xx))));
    var var_1 = !select(vec2<bool>(true, true), select(select(select(global1.xx, vec2<bool>(global1.x, global2.x), global2.x), global2.xx, !global2.yy), select(!global1.xy, select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, false), vec2<bool>(global2.x, true)), true), select(vec2<bool>(global1.x, global2.x), !vec2<bool>(false, global2.x), true)), select(!select(vec2<bool>(true, global2.x), vec2<bool>(global1.x, global2.x), vec2<bool>(true, global1.x)), global2.xz, !(!global2.zy)));
    var var_2 = global3[_wgslsmith_index_u32(~u_input.c, 11u)];
    global3 = array<vec3<u32>, 11>();
    global2 = vec3<bool>(var_1.x, false && (u_input.b > 51533i), any(!(!vec4<bool>(true, var_1.x, false, var_1.x))) || true);
    return all(!vec2<bool>(var_1.x, var_1.x));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 27u)], -600f));
    global1 = vec4<bool>(global2.x, any(!vec4<bool>(true, global1.x, !global1.x, false)), global2.x, all(select(!(!vec3<bool>(global2.x, true, global1.x)), vec3<bool>(global2.x, func_3(), true), select(global1.xxy, global1.yzx, vec3<bool>(global2.x, global2.x, true)))));
    global2 = vec3<bool>(any(global1.ww), global1.x, false);
    global2 = !(!select(!select(vec3<bool>(global1.x, global2.x, global2.x), global1.zww, vec3<bool>(global1.x, global1.x, global1.x)), !vec3<bool>(true, global2.x, global1.x), !select(vec3<bool>(global1.x, global2.x, global1.x), vec3<bool>(true, false, global2.x), false)));
    global1 = select(select(select(!vec4<bool>(global1.x, global2.x, false, false), select(vec4<bool>(global2.x, global1.x, global2.x, false), select(vec4<bool>(global2.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, false, global2.x), vec4<bool>(global2.x, false, false, true)), u_input.c == u_input.c), all(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(false, global2.x, true, global1.x), global1.x))), !vec4<bool>(u_input.c >= u_input.c, any(vec4<bool>(true, true, global1.x, global2.x)), u_input.b >= u_input.a.x, !global2.x), ~u_input.a.x >= ~u_input.a.x), select(!select(!vec4<bool>(global2.x, global2.x, global2.x, global1.x), !vec4<bool>(true, global1.x, true, false), vec4<bool>(false, global2.x, global1.x, global2.x)), vec4<bool>(global1.x, true, global2.x && global1.x, !any(vec3<bool>(true, false, global2.x))), any(!(!vec4<bool>(global1.x, false, true, false)))), !(u_input.b < u_input.b));
    return Struct_4(vec3<bool>(!any(select(vec2<bool>(global2.x, global1.x), vec2<bool>(global2.x, true), global2.xx)), any(global2.yy), false));
}

fn func_1() -> vec4<u32> {
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 27u)]))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(87209u, 27u)], global0[_wgslsmith_index_u32(13430u, 27u)]) + _wgslsmith_f_op_f32(f32(-1f) * -526f)))), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 1u, ~u_input.c ^ firstLeadingBit(14223u)), 27u)], -789f)));
    let var_2 = vec4<u32>(~4294967295u, select(0u, u_input.c, false), _wgslsmith_add_u32(1u, min(u_input.c, u_input.c)) << (1u % 32u), firstTrailingBit(~firstTrailingBit(u_input.c))) >> (~reverseBits(vec4<u32>(abs(1u), 0u, _wgslsmith_sub_u32(0u, u_input.c), 0u)) % vec4<u32>(32u));
    var var_3 = var_2;
    var var_4 = u_input.b;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global3 = array<vec3<u32>, 11>();
    global1 = select(vec4<bool>(!global1.x, global1.x, select(global1.x, func_3(), global2.x), u_input.b < -43738i), select(select(vec4<bool>(true, !global1.x, all(global1.zzx), !global1.x), vec4<bool>(global2.x || true, 38231i < u_input.b, false, any(vec4<bool>(false, global2.x, global1.x, global2.x))), countOneBits(var_0.x) == _wgslsmith_clamp_u32(u_input.c, 1u, var_0.x)), vec4<bool>(all(vec3<bool>(true, false, global1.x)), any(select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(global1.x, true, true, true), vec4<bool>(global2.x, global1.x, global2.x, global2.x))), global1.x, !global2.x), vec4<bool>(any(global1.yzw), !global2.x, any(vec4<bool>(true, global2.x, global1.x, true)), all(vec2<bool>(global2.x, global1.x)) || all(vec4<bool>(false, global1.x, global1.x, true)))), global2.x);
    let var_1 = true;
    global1 = !select(vec4<bool>(global1.x && any(vec4<bool>(false, false, global1.x, global1.x)), true, true && global2.x, var_1), select(select(vec4<bool>(global2.x, global1.x, false, true), select(vec4<bool>(false, global1.x, true, global2.x), vec4<bool>(true, true, global2.x, true), vec4<bool>(false, false, global1.x, false)), select(vec4<bool>(true, false, true, var_1), vec4<bool>(true, var_1, var_1, true), false)), !select(vec4<bool>(global1.x, false, global1.x, var_1), vec4<bool>(global2.x, global2.x, global1.x, false), global2.x), true), var_1);
    var var_2 = false;
    let var_3 = Struct_2(global3[_wgslsmith_index_u32(~u_input.c, 11u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(~var_0.x, 27u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, var_3.a.x)), 27u)], global0[_wgslsmith_index_u32(~6408u, 27u)]) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0[_wgslsmith_index_u32(51842u, 27u)], global0[_wgslsmith_index_u32(var_0.x, 27u)], global0[_wgslsmith_index_u32(var_3.a.x, 27u)]))) + vec3<f32>(504f, -1716f, global0[_wgslsmith_index_u32(9584u, 27u)])))), 1i);
}


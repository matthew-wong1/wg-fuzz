struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 14>;

var<private> global2: vec4<i32> = vec4<i32>(139i, i32(-2147483648), -39585i, -9767i);

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<i32> {
    var var_0 = global2.wyx;
    let var_1 = vec4<bool>(true, false, any(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), any(vec3<bool>(true, false, true)))), !all(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true))));
    let var_2 = var_1.x;
    var var_3 = ~reverseBits(u_input.b);
    var var_4 = -max(firstTrailingBit(max(vec2<i32>(global2.x, u_input.d.x), vec2<i32>(0i, global0.b.x))), countOneBits(min(global2.zx, vec2<i32>(var_0.x, 43623i)))) << (~countOneBits(firstTrailingBit(vec2<u32>(1u, u_input.b.x)) >> ((u_input.b.ww >> (vec2<u32>(4294967295u, 4056u) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    return abs(vec3<i32>(min(max(68895i, 7283i), _wgslsmith_clamp_i32(~var_0.x, 1i, -4558i)), reverseBits(_wgslsmith_mult_i32(u_input.d.x | 0i, -2147483647i)), _wgslsmith_mod_i32(countOneBits(-2147483647i), 1i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    global3 = array<Struct_1, 27>();
    var var_0 = -(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, ~50479u), 14u)] | global1[_wgslsmith_index_u32(u_input.c, 14u)]);
    var_0 = global0.a.x;
    var var_1 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(func_3(), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.b.x, -40452i, 17262i), global2.zwx), global2.xyw), arg_0.a), u_input.d.zzz), vec2<i32>(-(_wgslsmith_dot_vec2_i32(u_input.d.yw, vec2<i32>(-2147483647i, global2.x)) >> (19901u % 32u)), abs(min(global0.b.x, 1i)) << (_wgslsmith_sub_u32(u_input.a, ~u_input.a) % 32u)));
    return ~0u;
}

fn func_1(arg_0: u32, arg_1: u32) -> f32 {
    let var_0 = !vec4<bool>(true, select(any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true))), any(vec2<bool>(true, true)), 4294967295u <= func_2(global3[_wgslsmith_index_u32(62193u, 27u)], vec3<bool>(false, true, false))), !all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true))));
    global2 = vec4<i32>(~_wgslsmith_div_i32(~global0.a.x, u_input.d.x), -1i, 23098i, firstLeadingBit(firstTrailingBit(_wgslsmith_div_i32(countOneBits(u_input.d.x), select(global0.a.x, 55261i, var_0.x)))));
    let var_1 = Struct_3(abs(vec2<i32>(abs(u_input.d.x), 1i) | vec2<i32>(global1[_wgslsmith_index_u32(arg_0 << (4294967295u % 32u), 14u)], _wgslsmith_mult_i32(global2.x, u_input.d.x))), abs(-vec4<i32>(~(-2147483647i), global0.a.x, firstTrailingBit(-1i), 50941i)), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, global0.b.x), vec2<i32>(19084i, 2367i)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(4294967295u, 14u)], global2.x), ~(-27916i)), _wgslsmith_div_i32(abs(global2.x), i32(-1i) * -1i)), vec2<i32>(global1[_wgslsmith_index_u32(arg_1, 14u)], -2147483647i)));
    var var_2 = global3[_wgslsmith_index_u32(~u_input.a, 27u)];
    var_2 = Struct_1(global0.a, abs(func_3().xy << (firstTrailingBit(vec2<u32>(u_input.b.x, arg_1)) % vec2<u32>(32u))));
    return 420f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(_wgslsmith_f_op_f32(func_1(~u_input.b.x, ~32340u)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -240f)), true, all(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true)), true);
    var var_1 = _wgslsmith_f_op_f32(step(154f, -939f));
    var var_2 = Struct_2(vec4<bool>(all(var_0.yw), _wgslsmith_clamp_u32(countOneBits(0u), _wgslsmith_dot_vec3_u32(u_input.b.xzx, vec3<u32>(16914u, 4294967295u, 1u)), _wgslsmith_sub_u32(u_input.b.x, 42230u)) >= u_input.b.x, !(!any(vec2<bool>(true, true))), true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1301f + _wgslsmith_f_op_f32(trunc(-311f))) + _wgslsmith_div_f32(1000f, -153f))), u_input.c << (1u % 32u));
    var var_3 = _wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1300f, _wgslsmith_f_op_f32(floor(-834f)))), var_2.c)));
    global1 = array<i32, 14>();
    global2 = ~firstLeadingBit(max(u_input.d, vec4<i32>(-1i) * -u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.c, var_2.c, false)) - _wgslsmith_f_op_f32(func_1(u_input.b.x, u_input.b.x))), var_2.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.zy) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(var_2.b.zz, vec2<f32>(-726f, -361f))))))), vec2<i32>(0i, u_input.d.x), firstLeadingBit(min(global2.wyx, ~firstTrailingBit(vec3<i32>(2147483647i, 28244i, -38179i)))), 0u, global0.a);
}


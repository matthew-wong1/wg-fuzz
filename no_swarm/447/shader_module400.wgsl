struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(53947u, 0u), -467f, false);

var<private> global1: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(vec4<i32>(-1i, -11043i, 0i, -6630i)), Struct_3(vec4<i32>(i32(-2147483648), -40121i, i32(-2147483648), 0i)), Struct_3(vec4<i32>(-1i, 0i, 10652i, 2147483647i)));

var<private> global2: array<Struct_1, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_5) -> vec2<u32> {
    global1 = array<Struct_3, 3>();
    var var_0 = Struct_2(vec4<bool>(!global0.c, false, any(select(!vec4<bool>(arg_0.a.x, false, true, false), vec4<bool>(false, true, true, false), true)), all(select(vec2<bool>(global0.c, true), arg_0.a.xz, select(arg_0.a.zy, vec2<bool>(arg_0.a.x, global0.c), arg_0.a.x)))), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(43247u, u_input.b.x, u_input.b.x), vec3<u32>(28447u, 0u, 66419u)), ~global0.a.x << (~global0.a.x % 32u)) | 6764u, 29u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(select(1u, 28075u, global0.c), u_input.b.x | 27014u), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.x, global0.a.x), global0.a, vec2<u32>(1u, u_input.b.x)) << ((u_input.b.zz & global0.a) % vec2<u32>(32u)))), 29u)], u_input.c);
    let var_1 = vec3<u32>(0u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_0.c.a.x, u_input.b.x, var_0.b.a.x), vec4<u32>(u_input.b.x, 31902u, 26011u, 71730u))), _wgslsmith_mult_u32(1u, max(0u, ~0u))) >> (~vec3<u32>(24780u, 1u, ~(var_0.b.a.x << (u_input.b.x % 32u))) % vec3<u32>(32u));
    let var_2 = true | select(any(vec4<bool>(all(var_0.a), arg_0.a.x, true, any(vec3<bool>(true, false, arg_0.a.x)))), true, any(var_0.a.zx));
    var_0 = Struct_2(select(var_0.a, vec4<bool>(var_0.b.c, any(vec2<bool>(false, false)), any(var_0.a.yy), !var_0.a.x), var_2), Struct_1(var_1.xy, -1542f, any(!arg_0.a.xx)), Struct_1(~vec2<u32>(~var_0.b.a.x, 75697u), _wgslsmith_f_op_f32(max(-1480f, -1000f)), global0.c), ~(i32(-1i) * -11599i));
    return ~(~_wgslsmith_clamp_vec2_u32(var_1.yz, countOneBits(~global0.a), ~max(vec2<u32>(var_0.c.a.x, 0u), var_1.yz)));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: vec2<u32>) -> f32 {
    var var_0 = func_3(Struct_5(select(!vec3<bool>(false, false, arg_1.x), !select(arg_1, vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_1.x, true, arg_1.x)), vec3<bool>(true, select(arg_1.x, arg_1.x, global0.c), !arg_1.x))));
    let var_1 = Struct_4(Struct_2(vec4<bool>(arg_1.x, any(!vec3<bool>(true, global0.c, arg_1.x)), any(arg_1.zy), true), global2[_wgslsmith_index_u32(global0.a.x, 29u)], global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, arg_0, global0.a.x) | vec3<u32>(var_0.x, 32650u, global0.a.x), vec3<u32>(4294967295u, global0.a.x, arg_2.x)), 29u)], -16904i), !(~10643u < abs(_wgslsmith_div_u32(global0.a.x, var_0.x))));
    var var_2 = select(firstTrailingBit(var_1.a.b.a.x), _wgslsmith_div_u32(~60727u, firstTrailingBit(0u)), all(var_1.a.a.yx));
    var_2 = 4294967295u;
    var var_3 = var_1.a;
    return _wgslsmith_div_f32(-466f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a.b.b), -1819f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(492f * var_3.b.b)))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(-1555f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(func_2(global0.a.x, vec3<bool>(false, false, global0.c), vec2<u32>(0u, u_input.b.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(199f, global0.b) + vec2<f32>(global0.b, global0.b)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.b, global0.b), vec2<f32>(-748f, 181f), true))))));
    let var_1 = !(!(!select(vec4<bool>(global0.c, global0.c, true, global0.c), !vec4<bool>(global0.c, global0.c, global0.c, global0.c), vec4<bool>(false, false, false, global0.c))));
    var var_2 = var_1.yyy;
    var var_3 = -27725i;
    let var_4 = Struct_5(select(var_1.yxz, !(!vec3<bool>(true, true, var_2.x)), select(select(var_1.zzw, var_1.zzz, true), select(vec3<bool>(global0.c, true, true), !vec3<bool>(global0.c, var_1.x, var_1.x), global0.c), true)));
    return _wgslsmith_sub_u32(~(~_wgslsmith_add_u32(49380u, ~4294967295u)), ~func_3(var_4).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(1u >> (firstTrailingBit(~_wgslsmith_clamp_u32(1u, 0u, 0u)) % 32u), ~func_1());
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1907f);
    var var_2 = -857f;
    var var_3 = ~(_wgslsmith_mod_u32(10215u, u_input.b.x) & 1u);
    var var_4 = _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c, u_input.d.x), -2147483647i)), ~u_input.d.x);
    var var_5 = _wgslsmith_mod_i32(~19415i, -64415i);
    var var_6 = global1[_wgslsmith_index_u32(~global0.a.x, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, abs(~countOneBits(~vec4<u32>(u_input.b.x, u_input.b.x, global0.a.x, 14925u))), 5653i, ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(firstTrailingBit(2147483647i), -u_input.d.x), u_input.a.x));
}


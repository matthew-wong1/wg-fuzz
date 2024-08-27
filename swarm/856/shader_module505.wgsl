struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(0i, i32(-2147483648), 2147483647i, 2147483647i), vec3<u32>(0u, 1u, 4580u));

var<private> global1: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(16255u, 0u), vec2<u32>(75253u, 1u), vec2<u32>(53223u, 119105u), vec2<u32>(944u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(0u, 7598u), vec2<u32>(62722u, 3491u), vec2<u32>(0u, 15566u), vec2<u32>(66974u, 4294967295u), vec2<u32>(14645u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 14761u), vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 70371u), vec2<u32>(0u, 44032u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 30984u), vec2<u32>(25207u, 17461u));

var<private> global2: Struct_1;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, true);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    global0 = arg_1;
    var var_0 = false;
    var var_1 = ~reverseBits(-41931i);
    let var_2 = Struct_1(vec4<i32>(global0.a.x, abs(global2.a.x), 8817i, 22903i), ~abs(reverseBits(~global2.b)));
    var var_3 = var_2;
    return i32(-1i) * -24104i;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    var var_0 = global2.a.x;
    global1 = array<vec2<u32>, 19>();
    var_0 = -(~(-31051i));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_div_i32(-func_3(countOneBits(global0.a.ywy), Struct_1(vec4<i32>(global2.a.x, 6658i, -1i, global2.a.x), vec3<u32>(global2.b.x, 4294967295u, global2.b.x))) & ~(i32(-1i) * -u_input.b.x), 1i | _wgslsmith_clamp_i32(global0.a.x, global0.a.x >> (_wgslsmith_mod_u32(1u, global0.b.x) % 32u), reverseBits(u_input.a) | -21983i));
    return select(select(vec4<bool>(!(!global3.x), false, all(!vec2<bool>(global3.x, arg_0)), true), !select(!vec4<bool>(var_1, true, false, true), vec4<bool>(false, arg_0, arg_0, global3.x), false), global3.x), select(!vec4<bool>(all(vec2<bool>(true, false)), false, var_1 & global3.x, true), vec4<bool>(arg_0, arg_0, any(vec2<bool>(true, true)), true | !arg_0), !(!(!vec4<bool>(arg_0, true, arg_0, global3.x)))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, global3.x, ~u_input.b.x == 52106i), select(vec4<bool>(false, true, true, var_1 | var_1), select(!vec4<bool>(true, arg_0, false, true), vec4<bool>(arg_0, false, true, var_1), global3.x), var_1)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: bool) -> vec2<u32> {
    var var_0 = global0.a.x;
    global3 = !func_2(global3.x);
    let var_1 = reverseBits(_wgslsmith_div_u32(~(~_wgslsmith_div_u32(global0.b.x, global0.b.x)), ~select(12066u, global2.b.x >> (global0.b.x % 32u), !global3.x)));
    let var_2 = Struct_1(global0.a, ~_wgslsmith_mod_vec3_u32(global0.b, vec3<u32>(global2.b.x, 57634u, 1u) << (global0.b % vec3<u32>(32u))));
    var var_3 = vec2<bool>(true && global3.x, all(global3.zwz));
    return _wgslsmith_mod_vec2_u32(vec2<u32>(~4294967295u, ~(~var_1) | abs(var_2.b.x)), vec2<u32>(var_2.b.x, 3948u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~func_1(vec2<i32>(global2.a.x, -16563i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-576f, -1937f))), global3.x), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(select(global0.b.xx, vec2<u32>(21201u, 1u), global3.yy)), ~_wgslsmith_div_vec2_u32(global0.b.zy, vec2<u32>(0u, global2.b.x))), global0.b.xx));
    global0 = Struct_1(global2.a, vec3<u32>(~(max(26791u, global2.b.x) & ~81967u), ~(_wgslsmith_div_u32(1u, var_0.x) >> (max(global0.b.x, 24193u) % 32u)), func_1(_wgslsmith_add_vec2_i32(global2.a.xz, _wgslsmith_div_vec2_i32(vec2<i32>(-25450i, 11531i), global0.a.xw)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2033f, 239f), vec2<f32>(-1000f, -357f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(431f, -188f) * vec2<f32>(-680f, 2181f))), global3.x).x));
    let var_1 = ~global2.a.x;
    let var_2 = firstTrailingBit(global0.a.ywz);
    let var_3 = Struct_1(~vec4<i32>(~abs(var_2.x), countOneBits(_wgslsmith_add_i32(-1i, global0.a.x)), 2147483647i, _wgslsmith_dot_vec2_i32(u_input.c.xz >> (vec2<u32>(65379u, 4294967295u) % vec2<u32>(32u)), var_2.zx | vec2<i32>(global2.a.x, u_input.b.x))), vec3<u32>(~global0.b.x, ~(~1u), abs(~68489u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(761f, 1542f, -480f, -600f)), vec4<f32>(_wgslsmith_f_op_f32(max(-935f, -1471f)), _wgslsmith_f_op_f32(trunc(-153f)), -713f, _wgslsmith_f_op_f32(trunc(-413f))))));
}


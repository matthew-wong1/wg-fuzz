struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4563u);

var<private> global1: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(0u, 130517u, 71080u, 16419u), vec4<u32>(0u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 1u, 10517u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u), vec4<u32>(4294967295u, 11545u, 13823u, 33185u), vec4<u32>(42081u, 0u, 31954u, 0u), vec4<u32>(0u, 4294967295u, 0u, 26408u), vec4<u32>(1u, 4294967295u, 1u, 4270u), vec4<u32>(73308u, 4294967295u, 32466u, 48627u), vec4<u32>(42589u, 5885u, 1u, 0u), vec4<u32>(0u, 20780u, 89330u, 1u), vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(1u, 11473u, 17695u, 52044u), vec4<u32>(102252u, 2912u, 38546u, 71868u), vec4<u32>(4294967295u, 1u, 59438u, 4294967295u), vec4<u32>(7960u, 67088u, 1u, 1u), vec4<u32>(3621u, 20712u, 0u, 0u), vec4<u32>(61548u, 4294967295u, 30438u, 4294967295u), vec4<u32>(28917u, 38907u, 4294967295u, 19750u), vec4<u32>(0u, 0u, 0u, 102205u), vec4<u32>(27097u, 73148u, 738u, 4294967295u), vec4<u32>(11589u, 23250u, 34702u, 4294967295u), vec4<u32>(1u, 28235u, 6384u, 1u), vec4<u32>(1u, 0u, 15869u, 4294967295u), vec4<u32>(4294967295u, 36077u, 16667u, 7468u), vec4<u32>(4294967295u, 29772u, 26831u, 40635u), vec4<u32>(4294967295u, 17112u, 1u, 4294967295u), vec4<u32>(1u, 41433u, 0u, 1u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> f32 {
    global0 = Struct_1(~global0.a);
    global1 = array<vec4<u32>, 28>();
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 1i, -u_input.b, countOneBits(-13929i)) & (vec4<i32>(u_input.d.x, u_input.b, -1i, u_input.b) << (~global1[_wgslsmith_index_u32(1u, 28u)] % vec4<u32>(32u))), ~firstLeadingBit(~vec4<i32>(2147483647i, u_input.b, 1i, 10782i)), (max(vec4<i32>(u_input.b, u_input.d.x, -21139i, 7522i), vec4<i32>(u_input.b, u_input.b, 1047i, 60414i)) & vec4<i32>(-1i, 2147483647i, -1i, 2147483647i)) ^ (~vec4<i32>(u_input.d.x, u_input.b, u_input.a.x, u_input.d.x) << (~global1[_wgslsmith_index_u32(3905u, 28u)] % vec4<u32>(32u)))) ^ (~(-vec4<i32>(0i, -38361i, -18027i, -1i)) >> (select(~u_input.c ^ reverseBits(vec4<u32>(0u, global0.a, global0.a, 83232u)), _wgslsmith_add_vec4_u32(~global1[_wgslsmith_index_u32(24135u, 28u)], _wgslsmith_add_vec4_u32(u_input.c, u_input.c)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) % vec4<u32>(32u)));
    global1 = array<vec4<u32>, 28>();
    global0 = Struct_1(~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c.x, firstLeadingBit(u_input.c.x)), countOneBits(~0u)));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -521f), !((var_0.x < firstLeadingBit(var_0.x)) & true)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_3 {
    global1 = array<vec4<u32>, 28>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -234f))) - 1000f));
    var_0 = _wgslsmith_f_op_f32(func_3(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-773f, 130f, 129f, 711f), vec4<f32>(-1100f, 663f, 525f, -383f))))))));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -142f), _wgslsmith_f_op_f32(-887f * _wgslsmith_f_op_f32(func_3(Struct_2(vec4<f32>(535f, 1042f, 1165f, -944f))))), 1216f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-678f, _wgslsmith_f_op_f32(-885f - -477f), true)))));
    let var_2 = ~countOneBits(countOneBits(28558u));
    return Struct_3(1152f, u_input.c.xw);
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> Struct_3 {
    var var_0 = func_2(Struct_1(4294967295u), vec2<u32>(abs(arg_1.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(u_input.c.x), _wgslsmith_div_u32(global0.a, arg_0), arg_0 | 0u, arg_1.b.x), reverseBits(vec4<u32>(arg_0, arg_0, 4294967295u, u_input.c.x)))));
    var var_1 = vec2<bool>(!(-max(arg_2, u_input.a.x) <= ((arg_2 & -20807i) ^ u_input.a.x)), select(!all(vec4<bool>(false, true, true, true)), false, any(vec3<bool>(false, false, all(vec2<bool>(true, true))))));
    var var_2 = _wgslsmith_f_op_f32(floor(-1641f));
    let var_3 = arg_3;
    let var_4 = -max(abs(u_input.d & (vec3<i32>(u_input.b, u_input.d.x, arg_2) ^ u_input.d)), u_input.d & u_input.a);
    return Struct_3(_wgslsmith_f_op_f32(min(arg_1.a, -732f)), vec2<u32>(u_input.c.x, global0.a));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<f32>) -> i32 {
    var var_0 = Struct_1(~31489u);
    var var_1 = Struct_2(vec4<f32>(func_1(28408u, func_2(Struct_1(0u), abs(u_input.c.xy)), u_input.d.x ^ _wgslsmith_add_i32(0i, u_input.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(983f)))).a, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(step(-1758f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(ceil(arg_2.x)))), -419f));
    var_0 = Struct_1(firstTrailingBit(_wgslsmith_clamp_u32(firstLeadingBit(min(0u, arg_1.b.x)), min(arg_1.b.x, _wgslsmith_add_u32(u_input.c.x, var_0.a)), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c.x, global0.a), ~arg_1.b.x))));
    var var_2 = arg_1;
    global0 = Struct_1(_wgslsmith_clamp_u32(~11360u, u_input.c.x >> (min(0u, ~1115u) % 32u), _wgslsmith_dot_vec3_u32(u_input.c.zww, ~vec3<u32>(global0.a, 55632u, arg_1.b.x))));
    return abs(_wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.d.x, u_input.b >> (42734u % 32u)), _wgslsmith_sub_i32(u_input.d.x & -1i, -2147483647i)) << (_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(var_2.b.x, 28u)], vec4<u32>(u_input.c.x, 0u, 4294967295u, arg_1.b.x)), _wgslsmith_div_u32(~16059u, _wgslsmith_mod_u32(1u, 62515u))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 28>();
    let var_0 = vec4<i32>(max(u_input.a.x, func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(635f, -517f, 1371f, -2289f) * vec4<f32>(674f, -568f, -3011f, 298f)), func_1(12182u, Struct_3(-471f, u_input.c.xx), u_input.b, -1691f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1475f, 1000f)))) & _wgslsmith_mult_i32(-31061i, ~_wgslsmith_mod_i32(2147483647i, u_input.d.x)), ~(i32(-1i) * -u_input.b), select(u_input.d.x, u_input.b, 4294967295u != u_input.c.x), u_input.a.x);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1238f)), func_2(Struct_1(u_input.c.x), ~vec2<u32>(global0.a, 5391u)).a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(443f, 776f))))), max(~(~u_input.c.zz) >> (~u_input.c.yx % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, global0.a, 0u) & vec4<u32>(u_input.c.x, 1u, u_input.c.x, global0.a), ~u_input.c), ~u_input.c.x)));
    let var_2 = Struct_1(0u);
    global0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, var_1.b.x), 1u));
    global0 = var_2;
    let var_3 = var_2;
    let var_4 = vec3<f32>(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1061f), _wgslsmith_f_op_f32(-var_1.a));
    let var_5 = func_1(~var_1.b.x, func_2(var_3, _wgslsmith_mult_vec2_u32(min(~var_1.b, func_2(var_2, u_input.c.zz).b), ~select(vec2<u32>(15250u, 35562u), u_input.c.ww, vec2<bool>(false, false)))), u_input.d.x, _wgslsmith_f_op_f32(-630f - 258f));
    let x = u_input.a;
    s_output = StorageBuffer(-32227i, var_1.b.x, -_wgslsmith_mult_i32(var_0.x, ~(~u_input.b)));
}


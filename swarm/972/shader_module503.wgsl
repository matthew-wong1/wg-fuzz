struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(13395u, 78626u, 0u, 22592u), vec4<u32>(1u, 4294967295u, 72281u, 51792u), vec4<u32>(4294967295u, 1u, 1u, 49378u), vec4<u32>(4294967295u, 11093u, 4528u, 26784u), vec4<u32>(7940u, 4294967295u, 1u, 4294967295u), vec4<u32>(42761u, 48041u, 1u, 40562u), vec4<u32>(115477u, 52887u, 21525u, 65663u), vec4<u32>(1u, 1u, 37096u, 4294967295u), vec4<u32>(34112u, 4294967295u, 4294967295u, 0u), vec4<u32>(510u, 0u, 19328u, 20569u), vec4<u32>(0u, 2735u, 52764u, 0u), vec4<u32>(0u, 0u, 25262u, 4294967295u), vec4<u32>(1789u, 46419u, 10919u, 4294967295u), vec4<u32>(55026u, 4294967295u, 50573u, 70780u), vec4<u32>(0u, 786u, 102618u, 4294967295u), vec4<u32>(15292u, 1u, 44695u, 4294967295u), vec4<u32>(0u, 50374u, 86795u, 50572u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> vec2<i32> {
    return -arg_0.a;
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_div_vec2_i32(firstTrailingBit(func_3(Struct_1(vec2<i32>(u_input.a, -2147483647i), 385f), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), true)), vec2<i32>(39070i, 1i)), _wgslsmith_f_op_f32(-1f));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> bool {
    var var_0 = -1i;
    let var_1 = arg_1;
    var var_2 = u_input.b.x;
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1.a.x, arg_2.x), arg_1.a.x), -13557i, -3630i, 46389i);
    let var_4 = func_2();
    return select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_4.b)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_2().b)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -1059f)))), any(!vec3<bool>(any(vec3<bool>(false, true, true)), u_input.b.x <= 32265u, any(vec3<bool>(false, false, false)))), true && !all(vec4<bool>(true, true, true, true)));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: vec4<u32>) -> i32 {
    var var_0 = func_2();
    let var_1 = func_2();
    var var_2 = select(select(!vec4<bool>(arg_0 != arg_0, true, arg_0, u_input.b.x <= arg_2.x), select(vec4<bool>(select(false, false, arg_0), select(arg_0, arg_0, arg_0), arg_0, arg_0), !(!vec4<bool>(arg_0, arg_0, arg_0, arg_0)), true), vec4<bool>((4294967295u <= arg_2.x) && !arg_0, select(arg_0, arg_0, true), arg_0, all(vec4<bool>(arg_0, arg_0, arg_0, true)))), select(vec4<bool>(true, true, !arg_0, true), vec4<bool>(!all(vec4<bool>(true, true, true, arg_0)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), arg_0)), arg_0, !all(vec3<bool>(true, true, arg_0))), arg_0), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1857f, 230f)) * var_1.b) != var_1.b, (u_input.b.x == _wgslsmith_div_u32(arg_2.x, 7498u)) & true, true, arg_0));
    let var_3 = var_0.a;
    var_0 = func_2();
    return var_1.a.x;
}

fn func_1() -> u32 {
    global0 = array<vec4<u32>, 17>();
    let var_0 = -vec3<i32>(func_5(func_4(vec3<i32>(u_input.a, -40125i, u_input.a), func_2(), vec2<i32>(u_input.a, u_input.a) | vec2<i32>(u_input.a, 2147483647i), func_2()), 1i, firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b.x, 17u)]) >> (global0[_wgslsmith_index_u32(~4294967295u, 17u)] % vec4<u32>(32u))), u_input.a, 15593i);
    var var_1 = Struct_1(abs(vec2<i32>(29524i ^ (var_0.x >> (0u % 32u)), ~26423i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(702f)), _wgslsmith_f_op_f32(max(-424f, _wgslsmith_f_op_f32(636f + -1923f))))) * _wgslsmith_div_f32(-1520f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1031f, 546f))))));
    var var_2 = countOneBits(~(~vec3<u32>(18431u, u_input.b.x, 32352u))) ^ vec3<u32>(31990u, ~firstTrailingBit(u_input.b.x), _wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), max(39921u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xx))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1181f, -463f)));
    return _wgslsmith_mod_u32(var_2.x, 78074u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(abs(reverseBits(~(~global0[_wgslsmith_index_u32(24915u, 17u)]))), global0[_wgslsmith_index_u32(func_1(), 17u)]);
    var var_1 = func_2();
    var var_2 = func_2();
    var var_3 = func_2().b;
    var var_4 = func_2();
    var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-159f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(404f + var_1.b))), _wgslsmith_f_op_f32(-1826f + _wgslsmith_f_op_f32(var_4.b - var_2.b))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.b - var_2.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -803f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(144f))))), var_2.a, _wgslsmith_mod_u32(u_input.b.x, 4294967295u));
}


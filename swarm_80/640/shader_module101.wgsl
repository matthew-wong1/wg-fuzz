struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<i32> = vec3<i32>(-18064i, -20471i, 3556i);

var<private> global2: array<vec4<u32>, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = global1.x;
    global2 = array<vec4<u32>, 25>();
    global0 = ~_wgslsmith_add_i32(u_input.d.x, 10647i);
    let var_0 = u_input.c.x;
    var var_1 = ~arg_1.a;
    return -1226f;
}

fn func_3() -> u32 {
    var var_0 = vec4<i32>(~(~global1.x) << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.c, firstTrailingBit(vec4<u32>(u_input.c.x, u_input.b, 0u, 3806u))), ~global2[_wgslsmith_index_u32(1u, 25u)]) % 32u), _wgslsmith_add_i32(_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -54565i, u_input.d.x), vec3<i32>(u_input.d.x, 50512i, 18384i)), ~countOneBits(-1i)), -2147483647i), -(_wgslsmith_add_i32(u_input.d.x, 97592i) | u_input.a.x) & -41587i, -max(global1.x, i32(-1i) * -52026i));
    var var_1 = Struct_1(-2147483647i);
    let var_2 = Struct_1(_wgslsmith_mult_i32(-var_1.a, 47650i));
    var_0 = abs(_wgslsmith_add_vec4_i32(select(countOneBits(vec4<i32>(50645i, -9544i, 2147483647i, var_0.x)), (vec4<i32>(global1.x, var_2.a, var_0.x, u_input.a.x) & vec4<i32>(var_1.a, 10964i, 6317i, global1.x)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.x, -1i, 17366i, 0i), vec4<i32>(var_0.x, 1i, u_input.d.x, 23048i), vec4<i32>(1i, 21290i, 1i, -40017i)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), select(vec4<i32>(_wgslsmith_sub_i32(-14611i, global1.x), var_0.x << (u_input.c.x % 32u), 1i, 1i), vec4<i32>(1i, 0i, 0i, global1.x) & abs(vec4<i32>(u_input.d.x, u_input.d.x, -1i, -773i)), true)));
    var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, ~(~23838i), max(_wgslsmith_mod_i32(~0i, _wgslsmith_div_i32(18270i, u_input.a.x)), var_1.a), _wgslsmith_add_i32(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, 22417i, var_2.a, -2147483647i), select(vec4<i32>(-1i, 16924i, var_0.x, -24555i), vec4<i32>(var_0.x, var_0.x, 26412i, global1.x), vec4<bool>(false, true, true, false))))), -(vec4<i32>(-5078i, 1i, 67459i, 2147483647i) >> ((~vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 4294967295u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 76928u, 0u, u_input.c.x), u_input.c)) % vec4<u32>(32u))), abs(-_wgslsmith_div_vec4_i32(vec4<i32>(-43928i, global1.x, u_input.a.x, var_2.a), vec4<i32>(-2147483647i, -2147483647i, -1i, -2147483647i))) << ((u_input.c << (firstTrailingBit(~vec4<u32>(7745u, u_input.c.x, u_input.c.x, u_input.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return _wgslsmith_mult_u32(~(~47675u), u_input.b);
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_1(~(-1i));
    let var_1 = func_3();
    var var_2 = select(vec3<i32>(~global1.x & abs(2147483647i), u_input.d.x, -var_0.a) << (abs(min(vec3<u32>(var_1, u_input.c.x, 47213u), ~u_input.c.www)) % vec3<u32>(32u)), vec3<i32>(-(~var_0.a) ^ 1i, reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, 16664i, var_0.a, var_0.a), vec4<i32>(var_0.a, 2147483647i, u_input.d.x, 31957i))), _wgslsmith_dot_vec3_i32(~vec3<i32>(global1.x, -1i, u_input.a.x), countOneBits(vec3<i32>(var_0.a, u_input.a.x, 1i) | vec3<i32>(var_0.a, var_0.a, 2147483647i)))), !any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false))));
    let var_3 = var_1;
    global1 = _wgslsmith_mult_vec3_i32(countOneBits(select(~(~vec3<i32>(-59995i, -1i, var_2.x)), vec3<i32>(~1i, global1.x, _wgslsmith_clamp_i32(-8702i, 2147483647i, global1.x)), vec3<bool>(true, true, true))), vec3<i32>(_wgslsmith_sub_i32(abs(firstTrailingBit(-42356i)), -28698i), _wgslsmith_sub_i32(var_0.a, 0i), -2147483647i));
    return Struct_1(u_input.d.x);
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global1 = vec3<i32>(2147483647i, u_input.a.x, ~countOneBits(arg_2.a));
    var var_0 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~u_input.c.zwy), u_input.c.zwy, vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, u_input.b), arg_1, 23009u ^ u_input.b)), arg_0 << (vec3<u32>(arg_1, _wgslsmith_div_u32(0u, 36654u), 1u) % vec3<u32>(32u)), abs(select(firstTrailingBit(u_input.c.wzy), countOneBits(vec3<u32>(36339u, 1u, u_input.b)), true)));
    let var_1 = abs(global2[_wgslsmith_index_u32(reverseBits(var_0.x), 25u)]);
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(-(global1.x << (var_1.x % 32u))), abs(-func_2(-228f).a), i32(-1i) * -arg_2.a, reverseBits(firstTrailingBit(global1.x)) << (u_input.c.x % 32u)), vec4<i32>(-2147483647i, arg_3.a, arg_2.a, ~arg_3.a));
    return Struct_1(arg_3.a);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(490f, arg_2), vec2<f32>(arg_2, arg_2))))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, -2428f))));
    var var_1 = ~u_input.c.xx;
    var_1 = u_input.c.xx;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-336f, -773f, -1701f) + vec3<f32>(var_0.x, 495f, arg_2)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1813f, 1031f, -367f))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(790f, arg_2, var_0.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1866f))), var_0.x, var_0.x), select(vec3<bool>(arg_1 & arg_1, true, arg_1), vec3<bool>(!arg_1, -2147483647i <= global1.x, global1.x != 15128i), !all(vec4<bool>(arg_1, true, arg_1, arg_1))))) * vec3<f32>(_wgslsmith_f_op_f32(-244f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), -579f, arg_2));
    var_1 = ~vec2<u32>(1u, select(u_input.b ^ abs(var_1.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(18004u, 20420u)), !all(vec3<bool>(true, false, arg_1))));
    return vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1773f * _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(var_0.x + arg_2))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(floor(arg_2))), var_2.x)))), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-764f + _wgslsmith_f_op_f32(1000f * -1793f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_5(func_4(vec3<u32>(u_input.b ^ 30254u, ~u_input.b, u_input.c.x), u_input.b, Struct_1(~u_input.a.x), func_2(_wgslsmith_f_op_f32(func_1(Struct_1(58414i), Struct_1(u_input.d.x))))), any(vec3<bool>(true, true, true)) || (all(vec2<bool>(false, true)) & true), _wgslsmith_f_op_f32(f32(-1f) * -588f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, -1701f, 1000f, -116f)))));
    var var_1 = func_4(u_input.c.xxw, firstTrailingBit(u_input.b), func_2(var_0.x), Struct_1(u_input.d.x));
    global2 = array<vec4<u32>, 25>();
    var_1 = Struct_1(1i);
    let var_2 = _wgslsmith_f_op_vec4_f32(func_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1362f) * var_0.x)), true, 1206f));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.c.yw));
}


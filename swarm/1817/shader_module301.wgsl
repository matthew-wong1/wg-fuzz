struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -770f;

var<private> global1: i32;

var<private> global2: i32;

var<private> global3: array<vec3<i32>, 4>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_dot_vec3_u32(~(_wgslsmith_mult_vec3_u32(vec3<u32>(1558u, 1u, u_input.c), select(vec3<u32>(u_input.b, u_input.c, 4294967295u), vec3<u32>(u_input.c, u_input.c, u_input.b), false)) | _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.b, 54581u), countOneBits(vec3<u32>(u_input.c, 79469u, 1u)))), ~vec3<u32>(_wgslsmith_clamp_u32(u_input.b, 62598u, firstLeadingBit(0u)), countOneBits(select(u_input.c, 34515u, true)), 67620u));
    var var_1 = select(vec4<bool>(true, select(any(vec4<bool>(false, false, false, true)), true, true), false, !(!all(vec4<bool>(true, true, true, false)))), !select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), false), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false), all(vec2<bool>(false, true))), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), true), false);
    var var_2 = 382f;
    let var_3 = 416f;
    var var_4 = Struct_4(reverseBits(2147483647i), vec3<bool>(all(!(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), u_input.b >= _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(u_input.b, u_input.b)), var_1.x), Struct_3(true, u_input.d.yy, Struct_1(~firstTrailingBit(15941u), vec4<f32>(_wgslsmith_f_op_f32(sign(-547f)), var_3, _wgslsmith_f_op_f32(f32(-1f) * -721f), _wgslsmith_f_op_f32(var_3 - var_3)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(min(515f, 1000f))), select(select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(false, var_1.x, var_1.x, true)), vec4<bool>(false, var_1.x, true, var_1.x), !var_1.x)), Struct_1(4294967295u, vec4<f32>(_wgslsmith_f_op_f32(floor(var_3)), 142f, _wgslsmith_f_op_f32(-var_3), _wgslsmith_div_f32(var_3, var_3)), _wgslsmith_f_op_f32(step(-847f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<bool>(false, var_1.x, true, true)), select(!select(var_1.yzz, var_1.zzx, vec3<bool>(var_1.x, true, true)), select(!vec3<bool>(var_1.x, true, var_1.x), var_1.xww, !var_1.x), false)), Struct_1(~(~(~4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(var_3, _wgslsmith_f_op_f32(round(-1000f)), true)), var_3, _wgslsmith_div_f32(var_3, var_3)), 1213f, select(vec4<bool>(all(vec3<bool>(true, var_1.x, true)), true != var_1.x, var_1.x, true), vec4<bool>(!var_1.x, true, !var_1.x, !var_1.x), vec4<bool>(false, var_1.x, !var_1.x, true))));
    return -1i;
}

fn func_2(arg_0: vec3<i32>) -> Struct_4 {
    let var_0 = abs(_wgslsmith_dot_vec3_i32(~select(-vec3<i32>(2147483647i, 55031i, 2147483647i), _wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, u_input.e, -828i)), any(vec3<bool>(true, false, true))), global3[_wgslsmith_index_u32(~u_input.c, 4u)]));
    let var_1 = Struct_4(func_3() >> (u_input.c % 32u), vec3<bool>(true, 23188i >= arg_0.x, all(vec3<bool>(true, true, true))), Struct_3(true, -vec2<i32>(var_0, arg_0.x), Struct_1(4294967295u, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1436f, 526f, -155f, 843f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1205f, 412f, -328f, -639f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1222f))), vec4<bool>(true, true, true, true)), Struct_1(~min(u_input.b, u_input.c), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-974f, -845f, 494f, -370f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-363f, -1467f, 240f, 484f), vec4<f32>(-254f, -728f, 364f, -104f), vec4<bool>(false, true, true, true))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-642f)))), vec4<bool>(true, true, true, true)), vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), false, select(all(vec4<bool>(false, false, false, true)), all(vec2<bool>(true, false)), true))), Struct_1(u_input.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-446f, 1943f, -192f, -151f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1312f), _wgslsmith_f_op_f32(max(-177f, 544f)), _wgslsmith_f_op_f32(-143f * -778f), -729f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-359f * -119f) + -303f), -2984f), vec4<bool>(true, true, true, true)));
    let var_2 = Struct_1(50050u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.c.c.b, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1656f, 753f, 762f, 1713f), var_1.d.b), _wgslsmith_f_op_vec4_f32(var_1.c.c.b - vec4<f32>(var_1.d.b.x, -747f, var_1.c.c.b.x, var_1.c.c.b.x))), var_1.c.d.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1597f * _wgslsmith_f_op_f32(sign(610f))), var_1.c.d.b.x), var_1.c.d.d);
    var var_3 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(u_input.d.xy) << (select(vec2<u32>(var_2.a, 4294967295u), vec2<u32>(u_input.b, u_input.b), vec2<bool>(var_2.d.x, false)) % vec2<u32>(32u)), var_1.c.b | vec2<i32>(-1i, -2147483647i)) | ~(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, var_1.c.b.x), vec2<i32>(-20020i, var_0), vec2<i32>(31889i, 2147483647i)) & vec2<i32>(arg_0.x, 64127i)), reverseBits(min(u_input.d.xz, firstLeadingBit(vec2<i32>(var_0, -2147483647i)) >> (countOneBits(vec2<u32>(95806u, 4294967295u)) % vec2<u32>(32u)))));
    var_3 = -((-vec2<i32>(1i, arg_0.x) << ((abs(vec2<u32>(u_input.b, u_input.b)) | select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, 1u), var_2.d.x)) % vec2<u32>(32u))) >> ((_wgslsmith_mod_vec2_u32(select(vec2<u32>(var_1.d.a, 14558u), vec2<u32>(u_input.b, 15652u), var_1.b.yz), vec2<u32>(13189u, 2748u) >> (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u))) | ~(vec2<u32>(38465u, u_input.c) | vec2<u32>(u_input.c, var_1.d.a))) % vec2<u32>(32u)));
    return Struct_4(-abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-16974i, var_0, 29737i, arg_0.x), vec4<i32>(arg_0.x, 4869i, -1i, 2147483647i))) << (_wgslsmith_mod_u32(var_1.d.a, firstTrailingBit(~23661u)) % 32u), vec3<bool>(var_2.d.x, var_2.d.x, select(~4294967295u, ~0u, any(vec4<bool>(false, false, var_1.c.d.d.x, false))) < _wgslsmith_add_u32(~43157u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 4294967295u), vec3<u32>(var_2.a, u_input.b, u_input.c)))), var_1.c, Struct_1(select(~var_1.d.a, u_input.c, var_1.c.e.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(var_2.b)), _wgslsmith_f_op_vec4_f32(-var_1.d.b))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_2.b, var_1.c.d.b)))), 1000f, vec4<bool>(false | (var_2.a != 4294967295u), true, all(var_2.d), (true & var_1.c.e.x) | var_1.b.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32, arg_3: vec2<f32>) -> Struct_3 {
    return arg_0;
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool) -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(max(-430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.c + 1255f))))));
    let var_0 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.c.a, u_input.c) & select(vec2<u32>(1592u, 80678u), vec2<u32>(u_input.b, u_input.b), arg_2), countOneBits(~vec2<u32>(u_input.c, 1u))), vec2<u32>(arg_1.c.a, 1u), select(~abs(vec2<u32>(1u, 0u)), ~(vec2<u32>(4294967295u, arg_1.d.a) & vec2<u32>(arg_1.d.a, u_input.c)), !(!arg_0.x)));
    var var_1 = arg_1.b;
    var var_2 = vec2<bool>(arg_0.x, all(arg_0));
    var_2 = select(arg_1.e.zx, func_4(Struct_3(true & arg_1.d.d.x, ~func_4(arg_1, Struct_4(-2147483647i, vec3<bool>(arg_2, false, var_2.x), arg_1, arg_1.c), arg_1.b.x, arg_1.c.b.yw).b, func_4(arg_1, func_2(vec3<i32>(-43504i, -50740i, 60222i)), arg_1.b.x, _wgslsmith_f_op_vec2_f32(arg_1.c.b.xz + vec2<f32>(313f, -1368f))).d, arg_1.c, func_2(vec3<i32>(u_input.a, u_input.e, 0i)).c.c.d.xwx), Struct_4(arg_1.b.x, !func_2(vec3<i32>(u_input.e, arg_1.b.x, 0i)).c.d.d.zwz, func_4(arg_1, func_2(vec3<i32>(65351i, arg_1.b.x, 8598i)), -2147483647i, arg_1.d.b.yw), Struct_1(select(4294967295u, 77034u, arg_1.d.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.b.x, 320f, arg_1.d.b.x, arg_1.d.b.x)), _wgslsmith_f_op_f32(-arg_1.c.b.x), vec4<bool>(true, arg_2, true, false))), _wgslsmith_mult_i32(1i, i32(-1i) * -u_input.a), arg_1.c.b.ww).c.d.ww, arg_0.zz);
    return Struct_4(u_input.e, arg_0.yyw, func_4(arg_1, func_2(u_input.d), arg_1.b.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.d.c - -816f), 678f) - vec2<f32>(arg_1.c.b.x, _wgslsmith_f_op_f32(step(-237f, -474f))))), arg_1.c);
}

fn func_6(arg_0: Struct_4, arg_1: vec2<bool>) -> u32 {
    var var_0 = vec4<u32>(25575u & u_input.c, u_input.c, arg_0.d.a, 15159u);
    var var_1 = vec4<i32>(45980i, _wgslsmith_dot_vec2_i32(arg_0.c.b, select(firstLeadingBit(u_input.d.xz) | -arg_0.c.b, reverseBits(-arg_0.c.b), arg_0.c.a)), min(u_input.d.x, ~1388i) & min(_wgslsmith_div_i32(1i, ~(-2147483647i)), func_5(vec4<bool>(arg_1.x, arg_0.c.d.d.x, arg_1.x, false), func_5(vec4<bool>(arg_0.b.x, arg_1.x, arg_1.x, false), Struct_3(arg_0.d.d.x, vec2<i32>(arg_0.c.b.x, 0i), arg_0.d, arg_0.d, arg_0.b), arg_1.x).c, all(arg_0.c.c.d.xz)).c.b.x), 68i);
    global3 = array<vec3<i32>, 4>();
    global0 = -2487f;
    global1 = -firstLeadingBit(0i);
    return abs(min(var_0.x, 4294967295u) >> (_wgslsmith_dot_vec3_u32(var_0.wyw, select(firstTrailingBit(var_0.wxw), _wgslsmith_add_vec3_u32(vec3<u32>(0u, var_0.x, 0u), vec3<u32>(7523u, 41441u, 0u)), vec3<bool>(true, arg_1.x, arg_0.b.x))) % 32u));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = countOneBits(vec2<i32>(-(~u_input.a), -_wgslsmith_mod_i32(_wgslsmith_div_i32(-8191i, u_input.d.x), ~(-2147483647i))));
    var var_1 = select(func_6(func_5(vec4<bool>(false, !arg_2.a.d.x, all(arg_1.d.zwy), arg_1.c > -2262f), func_4(Struct_3(true, u_input.d.zy, Struct_1(arg_2.a.a, arg_1.b, arg_2.a.c, vec4<bool>(arg_2.a.d.x, arg_1.d.x, false, true)), Struct_1(17397u, arg_2.a.b, 771f, arg_2.a.d), vec3<bool>(true, arg_1.d.x, true)), func_2(vec3<i32>(-16359i, var_0.x, 38848i)), u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(-983f, arg_1.c) - vec2<f32>(425f, arg_2.a.c))), arg_1.d.x), !(!func_2(vec3<i32>(u_input.a, 5702i, var_0.x)).b.yx)), countOneBits(0u), true);
    global1 = _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(2147483647i, -u_input.d.x, ~_wgslsmith_sub_i32(0i, u_input.d.x)), -_wgslsmith_dot_vec2_i32(u_input.d.yz, ~reverseBits(var_0)));
    global3 = array<vec3<i32>, 4>();
    let var_2 = 4294967295u;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(783f, arg_2.a.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_2(global3[_wgslsmith_index_u32(var_2, 4u)]).d.b.x)))), -535f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = _wgslsmith_f_op_f32(round(-893f));
    let var_1 = Struct_2(Struct_1(985u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1263f, -698f, 202f, 1035f), vec4<f32>(253f, -880f, -1058f, -1199f))) * vec4<f32>(-821f, _wgslsmith_f_op_f32(f32(-1f) * -159f), _wgslsmith_f_op_f32(func_1(4294967295u, Struct_1(53465u, vec4<f32>(-622f, -2358f, 747f, -1000f), 620f, vec4<bool>(true, var_0, false, var_0)), Struct_2(Struct_1(u_input.c, vec4<f32>(-609f, -1000f, -1519f, -1168f), 901f, vec4<bool>(true, var_0, false, false))))), _wgslsmith_f_op_f32(f32(-1f) * -1121f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1576f - -412f), _wgslsmith_f_op_f32(abs(2722f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1041f, 264f) + _wgslsmith_f_op_f32(f32(-1f) * -134f)), true)), select(func_5(!vec4<bool>(var_0, true, true, true), func_4(Struct_3(var_0, u_input.d.yx, Struct_1(75570u, vec4<f32>(-600f, -713f, 1320f, 1000f), -194f, vec4<bool>(var_0, var_0, false, true)), Struct_1(4294967295u, vec4<f32>(-1000f, -837f, -1819f, 342f), -1330f, vec4<bool>(var_0, var_0, var_0, true)), vec3<bool>(true, var_0, var_0)), Struct_4(u_input.d.x, vec3<bool>(true, false, true), Struct_3(false, u_input.d.zz, Struct_1(u_input.b, vec4<f32>(-1245f, -900f, -242f, 579f), -1000f, vec4<bool>(var_0, var_0, var_0, true)), Struct_1(u_input.b, vec4<f32>(134f, 1589f, 890f, 780f), -548f, vec4<bool>(true, true, var_0, var_0)), vec3<bool>(var_0, var_0, var_0)), Struct_1(u_input.c, vec4<f32>(1523f, -418f, -451f, 441f), 424f, vec4<bool>(var_0, var_0, true, false))), -5030i, vec2<f32>(-1217f, 1308f)), select(false, var_0, var_0)).c.d.d, select(!vec4<bool>(var_0, true, var_0, false), !vec4<bool>(true, true, var_0, true), func_5(vec4<bool>(false, true, false, false), Struct_3(var_0, vec2<i32>(u_input.a, u_input.e), Struct_1(u_input.b, vec4<f32>(-536f, -1591f, -772f, 1000f), 273f, vec4<bool>(var_0, var_0, true, false)), Struct_1(u_input.b, vec4<f32>(771f, -318f, -1077f, 566f), 582f, vec4<bool>(var_0, var_0, var_0, false)), vec3<bool>(var_0, var_0, var_0)), true).d.d), func_4(func_2(vec3<i32>(u_input.a, 2147483647i, u_input.e)).c, Struct_4(-1i, vec3<bool>(var_0, var_0, var_0), Struct_3(var_0, vec2<i32>(u_input.a, -43855i), Struct_1(0u, vec4<f32>(-402f, 440f, 868f, 698f), 520f, vec4<bool>(var_0, var_0, var_0, false)), Struct_1(4076u, vec4<f32>(1271f, 1522f, -606f, 380f), -507f, vec4<bool>(var_0, var_0, var_0, var_0)), vec3<bool>(false, var_0, false)), Struct_1(4839u, vec4<f32>(-208f, 711f, -638f, 927f), 1724f, vec4<bool>(true, var_0, var_0, false))), _wgslsmith_mod_i32(u_input.a, u_input.d.x), _wgslsmith_div_vec2_f32(vec2<f32>(577f, -760f), vec2<f32>(-790f, 768f))).d.d)));
    global2 = u_input.e;
    global2 = 0i;
    let var_2 = var_1.a.d.x;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -336f) * _wgslsmith_f_op_f32(select(var_1.a.c, -1639f, all(select(var_1.a.d, var_1.a.d, any(vec2<bool>(var_2, var_2)))))));
    let var_3 = Struct_2(Struct_1(countOneBits(u_input.c), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.b.x, -1496f, var_1.a.b.x, 966f) * var_1.a.b))), _wgslsmith_f_op_f32(var_1.a.c * var_1.a.c), vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -702f) > _wgslsmith_f_op_f32(-var_1.a.c), var_1.a.d.x, !any(vec2<bool>(var_2, false)), var_0)));
    var var_4 = vec2<u32>(var_3.a.a, ~var_1.a.a) & vec2<u32>(45590u, _wgslsmith_sub_u32(countOneBits(4294967295u) | var_3.a.a, var_3.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(var_3.a.a, 12015u) & firstLeadingBit(vec2<u32>(15828u, var_3.a.a))) << (vec2<u32>(52567u, ~100206u) % vec2<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.c) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !var_1.a.d.x == var_0))));
}


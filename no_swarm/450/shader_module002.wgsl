struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(1i), Struct_2(i32(-2147483648)), Struct_2(13337i), Struct_2(10874i), Struct_2(-1i), Struct_2(57394i), Struct_2(-24711i), Struct_2(26100i), Struct_2(0i), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648)), Struct_2(i32(-2147483648)), Struct_2(2147483647i), Struct_2(0i), Struct_2(0i), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(-1i), Struct_2(1i), Struct_2(-26424i), Struct_2(-1348i), Struct_2(0i), Struct_2(-1i));

var<private> global2: f32 = 264f;

var<private> global3: array<u32, 26>;

var<private> global4: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(17498i), Struct_2(-14975i), Struct_2(5377i), Struct_2(-52762i), Struct_2(-47575i), Struct_2(23723i), Struct_2(i32(-2147483648)), Struct_2(-22805i), Struct_2(-46491i), Struct_2(-3237i), Struct_2(0i), Struct_2(1i), Struct_2(0i), Struct_2(3557i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>) -> vec2<u32> {
    var var_0 = Struct_1(min(~(u_input.b.xy & u_input.b.wx), select(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(16677u, 26u)], 26u)], 26u)]), vec2<u32>(24589u, 17515u))), ~vec2<u32>(56072u, 65704u), vec2<bool>(true, any(vec3<bool>(true, true, true))))), arg_0.xyy, -2001f, ~(-_wgslsmith_add_vec2_i32(-vec2<i32>(global0.a, u_input.a.x), vec2<i32>(0i, arg_0.x))), countOneBits(min(~_wgslsmith_div_u32(19602u, 62379u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], 94162u, 7939u)), firstLeadingBit(u_input.b.zzw)))));
    let var_1 = Struct_1(~_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.xw, u_input.b.zy) >> (countOneBits(vec2<u32>(u_input.b.x, global3[_wgslsmith_index_u32(0u, 26u)])) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~u_input.b.wz, _wgslsmith_mult_vec2_u32(var_0.a, var_0.a), firstTrailingBit(vec2<u32>(1u, u_input.b.x)))), var_0.b, var_0.c, ~vec2<i32>(max(u_input.a.x, ~arg_0.x), i32(-1i) * -var_0.d.x), u_input.b.x);
    let var_2 = 9401u;
    var var_3 = Struct_1(reverseBits(abs(var_1.a)), ~abs(countOneBits(vec3<i32>(u_input.a.x, 1i, arg_0.x))), -231f, -_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, -1i)), abs(firstLeadingBit(vec2<i32>(2147483647i, -31462i))), var_0.d << (_wgslsmith_add_vec2_u32(u_input.b.zy, var_1.a) % vec2<u32>(32u))), ~abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(39726u, 28241u, 4414u, 4294967295u)), global3[_wgslsmith_index_u32(0u >> (var_0.e % 32u), 26u)])));
    var_0 = var_1;
    return max(var_3.a, ~(u_input.b.yw & var_3.a));
}

fn func_2(arg_0: f32) -> bool {
    global1 = array<Struct_2, 24>();
    let var_0 = Struct_3(_wgslsmith_clamp_vec2_u32(~vec2<u32>(~global3[_wgslsmith_index_u32(25842u, 26u)], _wgslsmith_mod_u32(u_input.b.x, 1u)), ~_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(44221u, u_input.b.x)), countOneBits(vec2<u32>(1u, global3[_wgslsmith_index_u32(60735u, 26u)]))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 541u), u_input.b.xw), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32((global3[_wgslsmith_index_u32(4294967295u, 26u)] << (12664u % 32u)) ^ firstTrailingBit(49215u), 26u)], 26u)])), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~30645u, 26u)], 26u)], Struct_1(reverseBits(firstTrailingBit(u_input.b.xw)), u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2122f))))), abs(reverseBits(vec2<i32>(-1i, u_input.a.x))), _wgslsmith_add_u32(min(~u_input.b.x, 1u), _wgslsmith_dot_vec3_u32(u_input.b.zwz, vec3<u32>(65205u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 26u)], 26u)], 23187u)) ^ _wgslsmith_mult_u32(u_input.b.x, u_input.b.x))));
    let var_1 = var_0;
    global2 = arg_0;
    var var_2 = Struct_4(var_1.c, Struct_1(u_input.b.zx, -(~min(vec3<i32>(23265i, var_1.c.d.x, var_0.c.b.x), u_input.a)), var_0.c.c, vec2<i32>(global0.a, -8702i), firstTrailingBit(var_1.b)), Struct_1(func_3(vec4<i32>(var_1.c.d.x, global0.a, -7336i, var_0.c.d.x)) << (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(7814u, 23948u), vec2<u32>(var_1.c.e, var_1.b)), _wgslsmith_mod_u32(u_input.b.x, var_1.c.a.x)) % vec2<u32>(32u)), vec3<i32>(-47911i, abs(var_1.c.d.x) | u_input.a.x, -1i), -2271f, _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -var_1.c.d, vec2<i32>(2147483647i, 19132i)), _wgslsmith_mult_u32(~(~1u), ~48488u)), vec2<bool>(_wgslsmith_mult_i32(firstTrailingBit(1i), _wgslsmith_div_i32(554i, var_0.c.d.x)) == 2662i, var_0.c.d.x >= countOneBits(2147483647i)));
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: bool) -> Struct_4 {
    global2 = 1000f;
    global1 = array<Struct_2, 24>();
    global4 = array<Struct_2, 14>();
    let var_0 = select(!vec3<bool>(arg_1, !arg_1, !(global0.a > global0.a)), select(vec3<bool>(!(arg_1 && false), any(vec3<bool>(arg_1, true, arg_1)), 1412f < _wgslsmith_div_f32(-749f, arg_0.x)), select(vec3<bool>(arg_0.x < -623f, func_2(549f), true), vec3<bool>(arg_1, true, !arg_1), select(select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, false, arg_1), arg_1), select(vec3<bool>(false, arg_1, false), vec3<bool>(arg_1, false, arg_1), false), arg_1)), select(!select(vec3<bool>(false, true, false), vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, arg_1, arg_1)), vec3<bool>(true, any(vec4<bool>(arg_1, true, arg_1, arg_1)), -42866i >= u_input.a.x), !select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, arg_1, arg_1), arg_1))), firstLeadingBit(firstTrailingBit(abs(-25308i))) > ~(-7790i));
    global0 = global4[_wgslsmith_index_u32(~0u, 14u)];
    return Struct_4(Struct_1(vec2<u32>(~(~u_input.b.x), _wgslsmith_dot_vec4_u32(u_input.b, min(vec4<u32>(u_input.b.x, 1u, global3[_wgslsmith_index_u32(0u, 26u)], 4294967295u), u_input.b))), vec3<i32>(2147483647i, abs(global0.a), ~(-2147483647i)) | vec3<i32>(u_input.a.x, -24896i, 9155i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -895f) - _wgslsmith_f_op_f32(abs(1646f))), -746f), u_input.a.yz, ~global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~u_input.b.x, 26u)], 26u)], 26u)]), 26u)]), Struct_1(u_input.b.wy, vec3<i32>(u_input.a.x, global0.a, u_input.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))), select(vec2<i32>(global0.a, u_input.a.x), u_input.a.xy, select(vec2<bool>(arg_1, false), var_0.xx, var_0.x || true)), max(54405u, u_input.b.x)), Struct_1(abs(vec2<u32>(1636u, 0u)) | vec2<u32>(u_input.b.x, ~4294967295u), select(u_input.a, firstLeadingBit(select(vec3<i32>(-1i, global0.a, u_input.a.x), u_input.a, vec3<bool>(var_0.x, arg_1, var_0.x))), vec3<bool>(true, var_0.x, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-491f, arg_0.x)) + _wgslsmith_f_op_f32(arg_0.x - -1000f)))), ~(~(u_input.a.xy >> (u_input.b.zz % vec2<u32>(32u)))), firstTrailingBit(u_input.b.x)), select(select(var_0.xz, !(!vec2<bool>(var_0.x, true)), false), !(!(!var_0.zx)), true || any(select(vec2<bool>(var_0.x, true), vec2<bool>(false, true), var_0.x))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = vec3<bool>(!any(!vec4<bool>(arg_0.d.x, false, true, false)), select(true, any(select(!vec3<bool>(true, false, arg_0.d.x), select(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), vec3<bool>(arg_0.d.x, arg_0.d.x, true), vec3<bool>(true, false, arg_0.d.x)), select(vec3<bool>(false, arg_0.d.x, arg_0.d.x), vec3<bool>(true, false, false), arg_0.d.x))), true && arg_0.d.x), false);
    var var_1 = Struct_1(~firstTrailingBit(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_1.wy, vec2<u32>(arg_1.x, 136u), arg_0.b.a), vec2<u32>(arg_1.x, arg_1.x))), u_input.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.c, arg_0.a.c, arg_0.c.c) * vec3<f32>(arg_0.c.c, 630f, arg_0.a.c)), !arg_0.d.x).c.c))), u_input.a.yz, u_input.b.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(36204u, arg_1.x | 4294967295u), reverseBits(_wgslsmith_div_vec2_u32(arg_2.wz, u_input.b.zx))) % 32u));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.c)) - -572f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1847f, var_1.c)) + _wgslsmith_f_op_f32(var_1.c + arg_0.c.c))))), _wgslsmith_div_f32(arg_0.a.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(633f * -1258f), 1964f))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(316f, -1000f)), _wgslsmith_f_op_f32(var_1.c + 100f), 757f, arg_0.a.c)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, var_1.c, var_1.c, var_1.c)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, -2451f, 231f, var_1.c))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(106f, arg_0.a.c, -1252f, -1113f) + vec4<f32>(-691f, arg_0.c.c, 511f, var_1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(339f, var_1.c, arg_0.b.c, -456f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1153f, 982f, 792f, var_1.c), vec4<f32>(-1770f, 921f, var_1.c, arg_0.a.c), vec4<bool>(var_0.x, arg_0.d.x, false, var_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1076f, var_1.c, arg_0.c.c, -664f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1298f, -486f, 810f, var_1.c) * vec4<f32>(-1000f, var_1.c, arg_0.a.c, var_1.c)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, var_1.c, 695f, 866f), vec4<f32>(arg_0.a.c, var_1.c, arg_0.b.c, 1821f))))))));
    var var_4 = Struct_3(_wgslsmith_add_vec2_u32(firstLeadingBit(arg_2.xy), var_1.a), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 4294967295u, _wgslsmith_div_u32(u_input.b.x, 1u)), _wgslsmith_div_u32(~arg_2.x, 4294967295u), arg_2.x), _wgslsmith_div_u32(7339u, ~1u) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 45837u), ~u_input.b.ww)), 26u)], arg_0.c);
    return Struct_2(var_4.c.b.x);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global3 = array<u32, 26>();
    global0 = arg_0;
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-914f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -754f)))) + _wgslsmith_div_f32(415f, _wgslsmith_f_op_f32(-1032f - _wgslsmith_f_op_f32(f32(-1f) * -648f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1003f), _wgslsmith_f_op_f32(abs(-809f))))));
    var var_0 = select(vec2<bool>(false == (2147483647i >= (1i | u_input.a.x)), 1f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) + -551f)), vec2<bool>(true, true), vec2<bool>(true, true));
    let var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(792f, 2608f, 163f)), any(vec2<bool>(var_0.x, false))).a.a.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6885u, 26u)], 26u)]), 26u)], _wgslsmith_mult_u32(1u, global3[_wgslsmith_index_u32(4294967295u, 26u)])), u_input.b.wz);
    return func_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1587f)) - _wgslsmith_f_op_f32(484f - 1655f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1083f * -381f)), !(!var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f)), 1f), any(select(select(select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, true, var_0.x), var_0.x), select(vec3<bool>(false, var_0.x, true), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x), var_0.x), !vec3<bool>(var_0.x, true, var_0.x), abs(17767i) < -global0.a))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 14>();
    global3 = array<u32, 26>();
    var var_0 = max(vec3<u32>(101501u, 1u, 44729u), vec3<u32>(~_wgslsmith_mult_u32(abs(896u), _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(1u, 26u)], 0u)), u_input.b.x, global3[_wgslsmith_index_u32(~u_input.b.x ^ 24598u, 26u)]));
    let var_1 = Struct_2(~1i);
    global4 = array<Struct_2, 14>();
    let var_2 = func_5(func_4(func_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(473f, 669f, 822f))))), true), select(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), firstLeadingBit(vec4<u32>(var_0.x, 19537u, 81561u, global3[_wgslsmith_index_u32(4294967295u, 26u)]))), vec4<u32>(u_input.b.x, firstLeadingBit(u_input.b.x), ~0u, global3[_wgslsmith_index_u32(~58346u, 26u)]), !any(vec4<bool>(false, true, true, false))), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 26u)], 82765u, global3[_wgslsmith_index_u32(var_0.x, 26u)], 48453u), ~vec4<u32>(u_input.b.x, 4294967295u, 90587u, 4294967295u)), firstLeadingBit(u_input.b))));
    var var_3 = Struct_3(var_0.yz, 4294967295u, Struct_1(u_input.b.xy, _wgslsmith_add_vec3_i32(vec3<i32>(-var_1.a, firstTrailingBit(-45193i), var_1.a >> (15767u % 32u)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1075f, 407f, -946f)), true).c.b), 1f, var_2.b.yx, 117314u));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a);
}

